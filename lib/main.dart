import 'package:bmi/Screens/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const BMIAPP());
}
class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return  const ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  BmiScreen(),
      ),
    );
  }
}