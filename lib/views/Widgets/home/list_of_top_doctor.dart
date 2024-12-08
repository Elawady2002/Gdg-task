import 'package:app/data/top_doctor_list.dart';
import 'package:app/model/top_doctor_model.dart';
import 'package:app/views/Widgets/home/card_top_doctor.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListOfTopDoctor extends StatefulWidget {
  const ListOfTopDoctor({super.key});

  @override
  State<ListOfTopDoctor> createState() => _ListOfTopDoctorState();
}

final List<TopDoctorModel> doctorList = doctor;

class _ListOfTopDoctorState extends State<ListOfTopDoctor> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 16.w,
          );
        },
        itemCount: doctorList.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CardTopDoctor(doctorModel: doctorList[index]);
        },
      ),
    );
  }
}
