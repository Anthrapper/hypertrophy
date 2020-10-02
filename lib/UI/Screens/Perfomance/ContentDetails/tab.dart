import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/tabController.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/GoalButtons.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/ContentDetails/detailsCards.dart';

import 'package:hypertrophy/utilities/constants/styles.dart';
import 'package:hypertrophy/utilities/utils.dart';

import 'contentCards.dart';

class TabSelect extends StatelessWidget {
  final TabControl _tabController = Get.put(TabControl());

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
                child: Center(
                  child: Text(
                    'PROGRAMS',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.hintText),
                      fontSize: Get.width / 19,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
              _top(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Get.width / 12,
                ),
                child: Obx(
                  () => Row(
                    children: [
                      _tabController.details.value
                          ? GestureDetector(
                              onTap: () {
                                _tabController.detailsClicked();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height / 30),
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 20,
                                  decoration: Styles().normalTab,
                                  child: GoalButtons(
                                    text: 'Details',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                _tabController.detailsClicked();
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
                                    text: 'Details',
                                  ),
                                ),
                              ),
                            ),
                      _tabController.content.value
                          ? GestureDetector(
                              onTap: () {
                                _tabController.contentClicked();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: Get.height / 30),
                                child: Container(
                                  width: Get.width / 2.5,
                                  height: Get.height / 20,
                                  decoration: Styles().normalTab,
                                  child: GoalButtons(
                                    text: 'Content',
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
                                    text: 'Content',
                                  ),
                                ),
                              ),
                            ),
                    ],
                  ),
                ),
              ),
              Obx(
                () => _tabController.details.value
                    ? ContentCards()
                    : DetailsCard(),
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

  Widget _top() {
    final pHeight = Get.height;
    final pWidth = Get.width;
    return Padding(
      padding: EdgeInsets.all(Get.width / 20),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: Get.height / 50),
            child: Image(
              image: AssetImage('assets/images/Rectangle 21.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(110, Get.height / 50, 0, 0),
            child: Image(
              image: AssetImage('assets/images/Rectangle 22.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Image(
              image: AssetImage('assets/images/Rectanglebig.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(25, pHeight * .25, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: pWidth / 20),
                  child: Text(
                    'Double your Stamina in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
                      fontSize: Get.width / 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: pWidth / 20),
                  child: Text(
                    'Just 6 Weeks with ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
                      fontSize: Get.width / 25,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: pWidth / 20),
                  child: Text(
                    'Absolute Ease',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
                      fontSize: Get.width / 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
