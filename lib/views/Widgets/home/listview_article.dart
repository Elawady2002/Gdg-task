import 'package:app/views/Widgets/home/article.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListviewArticle extends StatefulWidget {
  const ListviewArticle({super.key});

  @override
  State<ListviewArticle> createState() => _ListviewArticleState();
}

class _ListviewArticleState extends State<ListviewArticle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335.w,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(top: 8),
            child: Article(),
          );
        },
      ),
    );
  }
}
