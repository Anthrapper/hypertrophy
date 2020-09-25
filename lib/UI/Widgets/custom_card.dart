import 'package:hypertrophy/utilitis/utils.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget widget;
  CustomCard({this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: HexColorUtils.getColorFromHex(
          CustomColors.cardColor,
        ),
        borderRadius: BorderRadius.circular(14),
      ),
      child: widget,
    );
  }
}
