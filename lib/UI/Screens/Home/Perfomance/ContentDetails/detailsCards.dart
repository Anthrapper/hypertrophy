import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/utilities/utils.dart';

class DetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pWidth = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Image(
                image: AssetImage('assets/images/Rectangle detail.png'),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: pWidth / 50),
                    child: Text(
                      'JOHN WILLIAM',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: HexColorUtils.getColorFromHex(
                            CustomColors.whiteText),
                        fontSize: Get.width / 25,
                      ),
                    ),
                  ),
                  SizedBox(height: Get.height / 90),
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.height / 40),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border,
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.primary),
                        ),
                        Text(
                          '2.5 (255 reviews)',
                          style: GoogleFonts.lato(
                            fontSize: Get.width / 28,
                            letterSpacing: 1.2,
                            fontWeight: FontWeight.bold,
                            color: HexColorUtils.getColorFromHex(
                                CustomColors.whiteText),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: HexColorUtils.getColorFromHex(CustomColors.bg),
                child: Padding(
                  padding: EdgeInsets.only(left: Get.width / 20),
                  child: Text('About',
                      style: GoogleFonts.lato(
                          color: HexColorUtils.getColorFromHex(
                              CustomColors.textfieldText))),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 60, 0, 0),
                child: Text('Description about the training',
                    style: GoogleFonts.lato(
                        color: HexColorUtils.getColorFromHex(
                            CustomColors.whiteText),
                        fontSize: Get.width / 26,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold)),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, Get.height / 100, 0, 0),
                child: Text('program',
                    style: GoogleFonts.lato(
                        color: HexColorUtils.getColorFromHex(
                            CustomColors.whiteText),
                        fontSize: Get.width / 26,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
