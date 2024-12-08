import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Choose extends StatelessWidget {
  const Choose({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        getItemOfChoose('assets/images/icon-doctor.svg', 'Doctor'),
        getItemOfChoose('assets/images/icon-pharmacy.svg', 'Pharmacy'),
        getItemOfChoose('assets/images/icon-hospital.svg', 'Hospital'),
        getItemOfChoose('assets/images/icon-ambulance.svg', 'Ambulance'),
      ],
    );
  }
}

Column getItemOfChoose(String image, String lables) {
  return Column(
    children: [
      Container(
        width: 64.w,
        height: 56.h,
        decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            shadows: [
              BoxShadow(
                color: const Color(0x19000000),
                blurRadius: 70.r,
                offset: Offset(0.w, 17.h),
                spreadRadius: -11.r,
              )
            ]),
        child: Container(
          alignment: Alignment.center,
          width: 32.w,
          height: 32.h,
          child: SvgPicture.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
      ),
      SizedBox(
        height: 8.h,
      ),
      Text(
        lables,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFFA0A7B0),
          fontSize: 14.sp,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
      )
    ],
  );
}
