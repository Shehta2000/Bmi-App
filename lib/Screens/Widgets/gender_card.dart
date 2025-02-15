import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  final IconData icon;
  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
      ),
      height: 160.h,
      width: 150.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.white, size: 100.sp),
            SizedBox(height: 10.h),
            Text(
              label,
              style: TextStyle(color: Colors.white.withOpacity(0.8), fontSize: 20.sp),
            ),
          ],
        ),
      ),
    );
  }
}
