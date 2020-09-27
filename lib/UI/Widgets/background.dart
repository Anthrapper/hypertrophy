import 'package:flutter/material.dart';
import 'package:hypertrophy/utilities/utils.dart';

class Background extends StatelessWidget {
  final Widget widget;
  Background({this.widget});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            HexColorUtils.getColorFromHex(CustomColors.background),
            HexColorUtils.getColorFromHex(
              CustomColors.bg,
            ),
          ],
        ),
      ),
      child: widget,
    );
  }
}
