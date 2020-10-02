import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/utilities/Icons/custom_icons.dart';
import 'package:hypertrophy/utilities/hexColor.dart';
import 'package:hypertrophy/utilities/utils.dart';

class QuotePart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(
          Get.width / 11, Get.height / 25, Get.width / 11, 0),
      child: Row(
        children: [
          Column(
            children: [
              Icon(
                CustomIcons.gym,
                size: Get.height / 18,
                color: HexColorUtils.getColorFromHex(CustomColors.hintText),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '2160 kcal',
                  style: TextStyle(
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.hintText),
                      fontSize: 10),
                ),
              ),
            ],
          ),
          _seperator(),
          Column(
            children: [
              Icon(
                CustomIcons.diet,
                size: Get.height / 18,
                color: HexColorUtils.getColorFromHex(CustomColors.hintText),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '2,160 kcal',
                  style: TextStyle(
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.hintText),
                      fontSize: 10),
                ),
              ),
            ],
          ),
          _seperator(),
          Column(
            children: [
              Icon(
                CustomIcons.sleep,
                size: Get.height / 18,
                color: HexColorUtils.getColorFromHex(CustomColors.hintText),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '8 hrs',
                  style: TextStyle(
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.hintText),
                      fontSize: 10),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

  Widget _seperator() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        color: HexColorUtils.getColorFromHex(CustomColors.background),
        width: 5,
        height: 100,
      ),
    );
  }
}
