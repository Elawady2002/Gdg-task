import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 67.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: const Color(0xFFE8F3F1)),
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/rectangle-460.jpg"),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 209.w,
                      child: Text(
                        'The 25 Healthiest Fruits You Can Eat, According to a Nutritionist',
                        style: TextStyle(
                          color: const Color(0xFF565656),
                          fontSize: 10.sp,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Jun 10, 2021 ',
                          style: TextStyle(
                            color: const Color(0xFFADADAD),
                            fontSize: 8.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Container(
                          width: 2.w,
                          height: 2.h,
                          decoration: const ShapeDecoration(
                            color: Color(0xFFADADAD),
                            shape: OvalBorder(),
                          ),
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          '5min read',
                          style: TextStyle(
                            color: const Color(0xFFADADAD),
                            fontSize: 8.sp,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            SvgPicture.asset("assets/images/iconly-bold-bookmark.svg")
          ],
        ),
      ),
    );
  }
}
