import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultScreen extends StatelessWidget {
  final double bmiResult;

  const ResultScreen({super.key, required this.bmiResult});

  String getResultCategory() {
    if (bmiResult < 18.5) {
      return "UNDERWEIGHT";
    } else if (bmiResult < 25) {
      return "NORMAL";
    } else if (bmiResult < 30) {
      return "OVERWEIGHT";
    } else if (bmiResult < 35) {
      return "OBESE";
    } else {
      return "EXTREMELY OBESE";
    }
  }

  Color getCategoryColor() {
    if (bmiResult < 18.5) {
      return Colors.blue;
    } else if (bmiResult < 25) {
      return Colors.green;
    } else if (bmiResult < 30) {
      return Colors.yellow.shade700;
    } else if (bmiResult < 35) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  String getMessage() {
    if (bmiResult < 18.5) {
      return "You are underweight. Try to gain some healthy weight.";
    } else if (bmiResult < 25) {
      return "You have a normal body weight. Good job!";
    } else if (bmiResult < 30) {
      return "You are overweight. Consider a healthier diet & exercise.";
    } else if (bmiResult < 35) {
      return "You are obese. A healthier lifestyle is recommended.";
    } else {
      return "You are extremely obese. Seek medical advice.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Your Result",
              style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
            ),
             SizedBox(height: 30.h),
            Container(
              width: double.infinity,
              height: 300.h,
              decoration: const BoxDecoration(
                color:  Color(0xff141C22),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    getResultCategory(),
                    style: TextStyle(
                      color: getCategoryColor(),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    getMessage(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
               backgroundColor: const Color(0xff7B1C14),
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Re-Calculate",
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
