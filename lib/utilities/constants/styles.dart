import 'package:flutter/material.dart';
import 'package:hypertrophy/utilities/utils.dart';

class Styles {
  final normalContainer = BoxDecoration(
    color: HexColorUtils.getColorFromHex(
      CustomColors.background,
    ),
    boxShadow: [
      BoxShadow(
          color: HexColorUtils.getColorFromHex(CustomColors.shadow),
          blurRadius: 3.0,
          offset: Offset(0, 0),
          spreadRadius: 2),
    ],
  );
  final clickedContainer = BoxDecoration(
    color: HexColorUtils.getColorFromHex(
      CustomColors.primary,
    ),
    boxShadow: [
      BoxShadow(
        color: HexColorUtils.getColorFromHex(CustomColors.primary),
        blurRadius: 3.0,
        spreadRadius: 2,
        offset: Offset(0, 0),
      ),
    ],
  );
}
