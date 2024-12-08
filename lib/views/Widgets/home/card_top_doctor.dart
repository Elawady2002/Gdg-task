import 'package:app/model/top_doctor_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardTopDoctor extends StatelessWidget {
  const CardTopDoctor({super.key, required this.doctorModel});
  final TopDoctorModel doctorModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 118.w,
      height: 100.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: const Color(0xFFE8F3F1)),
          borderRadius: BorderRadius.circular(12.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 8.h,
          ),
          Container(
              width: 70.w,
              height: 70.h,
              alignment: Alignment.center,
              child: Image.asset(doctorModel.image)),
          SizedBox(
            height: 8.h,
          ),
          Text(
            doctorModel.name,
            style: TextStyle(
              color: const Color(0xFF555555),
              fontSize: 12.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Text(
            doctorModel.job,
            style: TextStyle(
              color: const Color(0xFFADADAD),
              fontSize: 9.sp,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            children: [
              Container(
                width: 28.w,
                height: 13.h,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE8F3F1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.23),
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/iconly-bold-star.svg',
                      width: 10.w,
                      height: 10.h,
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Text(
                      doctorModel.star,
                      style: TextStyle(
                        color: const Color(0xFF199A8E),
                        fontSize: 8.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/iconly-bold-location.svg'),
                    Text(
                      doctorModel.location,
                      style: TextStyle(
                        color: const Color(0xFFADADAD),
                        fontSize: 8.sp,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
