import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: TextStyle(
            color: const Color(0xFF101623),
            fontSize: 16.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        Text(
          'See all',
          style: TextStyle(
            color: const Color(0xFF199A8E),
            fontSize: 12.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
