import 'package:app/views/Widgets/home/Choose.dart';
import 'package:app/views/Widgets/home/cta.dart';
import 'package:app/views/Widgets/home/list_of_top_doctor.dart';
import 'package:app/views/Widgets/home/listview_article.dart';
import 'package:app/views/Widgets/home/nabitem.dart';
import 'package:app/views/Widgets/home/search_scation.dart';
import 'package:app/views/Widgets/home/title_sctaion.dart';
import 'package:app/views/Widgets/home/top_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
              left: 16,
              top: 64,
            ),
            child: ListView(
              children: [
                Column(
                  children: [
                    const TitleSection(),
                    SizedBox(
                      height: 16.h,
                    ),
                    const SearchScation(),
                    SizedBox(
                      height: 16.h,
                    ),
                    const Choose(),
                    SizedBox(
                      height: 16.h,
                    ),
                    const Cta(),
                    SizedBox(
                      height: 16.h,
                    ),
                    const Header(
                      label: 'Top Doctor',
                    )
                  ],
                ),
                SizedBox(
                  height: 16.h,
                ),
                const ListOfTopDoctor(),
                SizedBox(
                  height: 16.h,
                ),
                const Header(
                  label: 'Health article',
                ),
                SizedBox(
                  height: 16.h,
                ),
                const ListviewArticle()
              ],
            ),
          ),
          const Positioned(
            left: 0,
            bottom: 0,
            child: Nabitem(),
          )
        ],
      ),
    );
  }
}
