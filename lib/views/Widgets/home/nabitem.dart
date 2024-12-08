import 'package:app/data/list_item_nab.dart';
import 'package:app/model/nab_model.dart';
import 'package:app/views/Widgets/home/icon_nab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


final activeIndexProvider = StateProvider<int>((ref) => 0);

class Nabitem extends StatelessWidget {
  const Nabitem({super.key});

  @override
  Widget build(BuildContext context) {
    List<NabModel> nabitem = nab;
    
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      width: 375.w,
      height: 79.h,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          nabitem.length,
          (index) => Consumer(
            builder: (context, ref, child) {
              final isActive = ref.watch(activeIndexProvider) == index;
              return GestureDetector(
                onTap: () {
                  ref.read(activeIndexProvider.notifier).state = index;
                },
                child: IconNab(
                  color: isActive ? 0xff199A8E : 0xffADADAD,
                  nabModel: nabitem[index],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


