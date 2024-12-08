import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchScation extends StatelessWidget {
  const SearchScation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 324.w,
      height: 50.h,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Container(
            alignment: Alignment.center,
            width: 18.w,
            height: 18.h,
            child: SvgPicture.asset(
              'assets/images/iconly-light-outline-search.svg',
              fit: BoxFit.contain,
            ),
          ),
          hintText: 'Search doctor, drugs, articles...',
          hintStyle: TextStyle(
            color: const Color(0xFFADADAD),
            fontSize: 12.sp,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: getBorder(0xFFE8F3F1),
          enabledBorder: getBorder(0xFFE8F3F1),
          focusedBorder: getBorder(0xff199A8E),
          errorBorder: getBorder(0xFFFF0000),
        ),
      ),
    );
  }
}

InputBorder getBorder(int color) {
  return OutlineInputBorder(
      borderRadius:  BorderRadius.all(Radius.circular(24.r)),
      borderSide: BorderSide(width: 1.w, color: Color(color)));
}
