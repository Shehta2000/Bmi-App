import 'package:bmi/Screens/Widgets/custom_card.dart';
import 'package:bmi/Screens/Widgets/gender_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 150;
  int weight = 60;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "BMI Calculator",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // Gender Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const GenderCard(
                      icon: Icons.male,
                      label: "MALE",
                      color: Color.fromARGB(255, 16, 26, 33)),
                  SizedBox(width: 10.w),
                  const GenderCard(
                      icon: Icons.female,
                      label: "FEMALE",
                      color: Color.fromARGB(255, 123, 30, 23)),
                ],
              ),
              const SizedBox(height: 20),

              // Height Slider
              Container(
                height: 140.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color.fromARGB(255, 123, 30, 23),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 30.sp),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "${height.toStringAsFixed(1)} cm",
                      style: TextStyle(color: Colors.white, fontSize: 20.sp),
                    ),
                    SizedBox(height: 10.h),
                    Slider(
                      activeColor: Colors.black,
                      inactiveColor: Colors.white.withOpacity(0.8),
                      value: height,
                      onChanged: (double value) {
                        setState(() {
                          height = value;
                        });
                      },
                      min: 100,
                      max: 220,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // Weight & Age Cards
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCard(
                    label: 'WEIGHT',
                    value: weight,
                    onDecrease: () => setState(() => weight--),
                    onIncrease: () => setState(() => weight++),
                  ),
                  CustomCard(
                    label: 'AGE',
                    value: age,
                    onDecrease: () => setState(() => age--),
                    onIncrease: () => setState(() => age++),
                  ),
                ],
              ),
              const SizedBox(height: 40),

              // Calculate Button
              GestureDetector(
                onTap: () {
                  // حساب BMI هنا مستقبلاً
                },
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: const Color.fromARGB(255, 123, 30, 23),
                  ),
                  child: Center(
                    child: Text(
                      "CALCULATE",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// 🔹 Widget مخصص لإعادة استخدام كروت الوزن والعمر
