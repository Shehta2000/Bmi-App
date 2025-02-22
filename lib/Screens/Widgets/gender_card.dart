// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenderCard extends StatelessWidget {
  const  GenderCard({
    super.key,
    required this.icon,
    required this.label,
    required this.color,required this.onPressed,
  });

  final IconData icon;
  final String label;
  final Color color;
   final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        
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
      ),
    );
  }
}
