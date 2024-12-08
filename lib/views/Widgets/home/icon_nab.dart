import 'package:app/model/nab_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconNab extends StatelessWidget {
  const IconNab({
    super.key,
    required this.nabModel,
    required this.color,
  });
  final NabModel nabModel;
  final int color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      nabModel.icons,
      colorFilter: ColorFilter.mode(Color(color), BlendMode.srcIn),
    );
  }
}