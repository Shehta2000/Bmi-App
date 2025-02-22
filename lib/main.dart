import 'package:bmi/Screens/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Screens/result_screen.dart';

void main() {
  runApp(const BMIAPP());
}

class BMIAPP extends StatelessWidget {
  const BMIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(360, 690),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: (settings) {
          if (settings.name == '/result') {
            final double bmiResult = settings.arguments as double;
            return MaterialPageRoute(
              builder: (context) => ResultScreen(bmiResult: bmiResult),
            );
          }
          return null;
        },
        routes: {
          '/': (context) => const BmiScreen(),
        },
      ),
    );
  }
}
