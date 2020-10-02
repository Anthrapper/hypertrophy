import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/screenSelection.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/GoalButtons.dart';
import 'package:hypertrophy/UI/Screens/Home/Perfomance/ProgramsTrainers/programCards.dart';
import 'package:hypertrophy/UI/Screens/Home/Perfomance/ProgramsTrainers/trainingCards.dart';

import 'package:hypertrophy/utilities/constants/styles.dart';
import 'package:hypertrophy/utilities/utils.dart';

class TabBars extends StatefulWidget {
  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  final ScreenController _screenController = Get.put(ScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: Get.height / 50),
                child: Obx(
                  () => Center(
                    child: _screenController.programs.value
                        ? Text(
                            'TRAINING',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: HexColorUtils.getColorFromHex(
                                  CustomColors.hintText),
                              fontSize: Get.width / 19,
                              letterSpacing: 2,
                            ),
                          )
                        : Text(
                            'PROGRAMS',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: HexColorUtils.getColorFromHex(
                                  CustomColors.hintText),
                              fontSize: Get.width / 19,
                              letterSpacing: 2,
                            ),
                          ),
                  ),
                ),
              ),
              search(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width / 12,
                ),
                child: Obx(
                  () => Row(
                    children: [
                      _screenController.programs.value
                          ? GestureDetector(
                              onTap: () {
                                _screenController.programsClicked();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height / 30),
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 20,
                                  decoration: Styles().normalTab,
                                  child: GoalButtons(
                                    text: 'Programs',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _screenController.programsClicked();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: Get.height / 30,
                                ),
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 20,
                                  decoration: Styles().clickedTab,
                                  child: GoalButtons(
                                    color: HexColorUtils.getColorFromHex(
                                        CustomColors.background),
                                    text: 'Programs',
                                  ),
                                ),
                              ),
                            ),
                      _screenController.trainers.value
                          ? GestureDetector(
                              onTap: () {
                                _screenController.trainersClicked();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height / 30),
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 20,
                                  decoration: Styles().normalTab,
                                  child: GoalButtons(
                                    text: 'Trainers',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 1,
                                  vertical: Get.height / 30,
                                ),
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 20,
                                  decoration: Styles().clickedTab,
                                  child: GoalButtons(
                                    color: HexColorUtils.getColorFromHex(
                                        CustomColors.background),
                                    text: 'Trainers',
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => _screenController.programs.value
                    ? TrainingCards()
                    : ProgramCards(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget search() {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          Get.width / 20, Get.height / 28, Get.width / 20, 0),
      child: Container(
        child: TextField(
          style: TextStyle(
              fontSize: 16,
              color: HexColorUtils.getColorFromHex(CustomColors.whiteText)),
          decoration: InputDecoration(
            filled: true,
            fillColor: HexColorUtils.getColorFromHex(CustomColors.buttonColor),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Get.height * .02),
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(Get.height * .02),
            ),
            suffixIcon: Icon(Icons.clear, color: Colors.white70),
            border: InputBorder.none,
            hintText: "Search",
            contentPadding: EdgeInsets.only(
              left: Get.width / 16,
              right: Get.width / 20,
              top: Get.height / 50,
              bottom: Get.height / 50,
            ),
          ),
        ),
      ),
    );
  }
}
