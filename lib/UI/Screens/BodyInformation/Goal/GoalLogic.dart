import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/GoalButtons.dart';
import 'package:hypertrophy/utilities/constants/styles.dart';
import 'package:hypertrophy/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NormalButton {
  final bool value;

  final Function onTap;
  NormalButton({this.value, this.onTap});
  Widget buttonTwo() {
    return value
        ? GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().normalContainer,
                child: GoalButtons(
                  text: 'Lean',
                  color: Colors.white,
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().clickedContainer,
                child: GoalButtons(
                  color: HexColorUtils.getColorFromHex(CustomColors.background),
                  text: 'Lean',
                ),
              ),
            ),
          );
  }

  Widget buttonThree() {
    return value
        ? GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().normalContainer,
                child: GoalButtons(
                  text: 'Lose Weight',
                  color: Colors.white,
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().clickedContainer,
                child: GoalButtons(
                  color: HexColorUtils.getColorFromHex(CustomColors.background),
                  text: 'Lose Weight',
                ),
              ),
            ),
          );
  }

  Widget buttonFour() {
    return value
        ? GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().normalContainer,
                child: GoalButtons(
                  text: 'Strength Training',
                  color: Colors.white,
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().clickedContainer,
                child: GoalButtons(
                  color: HexColorUtils.getColorFromHex(CustomColors.background),
                  text: 'Strength Training',
                ),
              ),
            ),
          );
  }

  Widget buttonOne() {
    return value
        ? GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().normalContainer,
                child: GoalButtons(
                  text: 'Bulk Up',
                  color: Colors.white,
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              onTap();
            },
            child: Padding(
              padding: EdgeInsets.all(Get.width / 30),
              child: Container(
                height: Get.height / 16,
                decoration: Styles().clickedContainer,
                child: GoalButtons(
                  color: HexColorUtils.getColorFromHex(CustomColors.background),
                  text: 'Bulk Up',
                ),
              ),
            ),
          );
  }
}
