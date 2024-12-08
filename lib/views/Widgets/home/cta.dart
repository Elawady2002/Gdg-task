import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Cta extends StatelessWidget {
  const Cta({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 135.h,
      decoration: ShapeDecoration(
        color: const Color(0xFFE8F3F1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 15.w,
            top: 15.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Early protection for\nyour family health',
                  style: TextStyle(
                    color: const Color(0xFF101623),
                    fontSize: 18.sp,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Container(
                  alignment: Alignment.center,
                  width: 97.w,
                  height: 29.h,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF199A8E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child:  Text(
                    'Learn more',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 5.w,
            top: 5.h,
            child: SizedBox(
              width: 136.w,
              height: 136.h,
              
              child: Image.asset("assets/images/Image.jpg")),
          )
        ],
      ),
    );
  }
}
