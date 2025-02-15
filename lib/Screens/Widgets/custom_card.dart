import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  const CustomCard({
    required this.label,
    required this.value,
    required this.onIncrease,
    required this.onDecrease,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 150.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color.fromARGB(255, 16, 26, 33),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 20.sp),
            ),
            const SizedBox(height: 5),
            Text(
              '$value',
              style: TextStyle(color: Colors.white, fontSize: 40.sp, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: const Color(0xff4C4F5D),
                  child: IconButton(
                    icon: const Icon(Icons.remove, color: Colors.white),
                    onPressed: onDecrease,
                  ),
                ),
                SizedBox(width: 10.w),
                CircleAvatar(
                  radius: 25.r,
                  backgroundColor: const Color.fromARGB(255, 123, 30, 23),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white),
                    onPressed: onIncrease,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
