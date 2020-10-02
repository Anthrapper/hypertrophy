import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/UI/Widgets/custom_card.dart';
import 'package:hypertrophy/utilities/utils.dart';

class ContentCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Container(
                child: Text('Exercises',
                    style: GoogleFonts.lato(
                        color: HexColorUtils.getColorFromHex(
                            CustomColors.whiteText))),
                alignment: Alignment.center,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
                child: CustomCard(
                  widget: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            10, Get.height / 100, 10, Get.height / 100),
                        child: Text(
                          'Push Ups',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColorUtils.getColorFromHex(
                                CustomColors.whiteText),
                            fontSize: Get.width / 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 125),
                        child: Row(
                          children: [
                            Text('2SETS',
                                style: GoogleFonts.lato(
                                    color: HexColorUtils.getColorFromHex(
                                        CustomColors.whiteText),
                                    fontSize: Get.width / 40),
                                textAlign: TextAlign.end),
                            Text(
                              '-2SETS',
                              style: GoogleFonts.lato(
                                  color: HexColorUtils.getColorFromHex(
                                      CustomColors.whiteText),
                                  fontSize: Get.width / 40),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
                child: CustomCard(
                  widget: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            10, Get.height / 100, 10, Get.height / 100),
                        child: Text(
                          'Pull Ups',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColorUtils.getColorFromHex(
                                CustomColors.whiteText),
                            fontSize: Get.width / 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 140),
                        child: Row(
                          children: [
                            Text('2SETS',
                                style: GoogleFonts.lato(
                                    color: HexColorUtils.getColorFromHex(
                                        CustomColors.whiteText),
                                    fontSize: Get.width / 40),
                                textAlign: TextAlign.end),
                            Text(
                              '-2SETS',
                              style: GoogleFonts.lato(
                                  color: HexColorUtils.getColorFromHex(
                                      CustomColors.whiteText),
                                  fontSize: Get.width / 40),
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
                child: Container(
                  child: Text('Diet',
                      style: GoogleFonts.lato(
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.whiteText))),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
                child: CustomCard(
                  widget: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            10, Get.height / 100, 10, Get.height / 100),
                        child: Text(
                          'Eggs',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColorUtils.getColorFromHex(
                                CustomColors.whiteText),
                            fontSize: Get.width / 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 175),
                        child: Text('Breakfast',
                            style: GoogleFonts.lato(
                                color: HexColorUtils.getColorFromHex(
                                    CustomColors.whiteText),
                                fontSize: Get.width / 40),
                            textAlign: TextAlign.end),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
