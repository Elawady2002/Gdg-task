import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Find your desire \nhealt solution',
          style: GoogleFonts.inter(
            color: const Color(0xFF101623),
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        SvgPicture.asset(
          'assets/images/iconly-light-notification.svg',
          height: 24.h,
          width: 24.w,
        )
      ],
    );
  }
}
