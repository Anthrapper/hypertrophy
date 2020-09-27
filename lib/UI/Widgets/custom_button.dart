import 'package:hypertrophy/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final String text;
  CustomButton({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height / 18,
      decoration: BoxDecoration(
        color: HexColorUtils.getColorFromHex(
          CustomColors.background,
        ),
        borderRadius: BorderRadius.circular(23),
        boxShadow: [
          BoxShadow(
            color: HexColorUtils.getColorFromHex(CustomColors.shadow),
            offset: const Offset(0, 1),
            blurRadius: 4,
            spreadRadius: 8,
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: HexColorUtils.getColorFromHex(CustomColors.primary),
            fontSize: Get.width / 22,
            letterSpacing: 1.4,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
