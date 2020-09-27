import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/utilities/utils.dart';

class Boxes {
  final Function onTap;
  final bool value;
  Boxes({this.onTap, this.value});

  Widget boxOne() {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.only(top: Get.height / 20),
        child: value
            ? Container(
                decoration: BoxDecoration(
                  color: HexColorUtils.getColorFromHex(CustomColors.maleBox),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                height: Get.height / 7,
                width: Get.width / 3,
                child: Text(
                  'Male',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.maleBox),
                      offset: const Offset(0, 2),
                      blurRadius: 7,
                      spreadRadius: 3,
                    ),
                  ],
                  color: HexColorUtils.getColorFromHex(CustomColors.maleBox),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                height: Get.height / 7,
                width: Get.width / 3,
                child: Text(
                  'Male',
                  style: TextStyle(color: Colors.white),
                ),
              ),
      ),
    );
  }

  Widget boxTwo() {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Padding(
        padding: EdgeInsets.only(top: Get.height / 20),
        child: value
            ? Container(
                decoration: BoxDecoration(
                  color: HexColorUtils.getColorFromHex(CustomColors.femaleBox),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                height: Get.height / 7,
                width: Get.width / 3,
                child: Text(
                  'Female',
                  style: TextStyle(color: Colors.white),
                ),
              )
            : Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.femaleBox),
                      offset: const Offset(0, 2),
                      blurRadius: 7,
                      spreadRadius: 3,
                    ),
                  ],
                  color: HexColorUtils.getColorFromHex(CustomColors.femaleBox),
                  borderRadius: BorderRadius.circular(14),
                ),
                alignment: Alignment.center,
                height: Get.height / 7,
                width: Get.width / 3,
                child: Text(
                  'Female',
                  style: TextStyle(color: Colors.white),
                ),
              ),
      ),
    );
  }
}
