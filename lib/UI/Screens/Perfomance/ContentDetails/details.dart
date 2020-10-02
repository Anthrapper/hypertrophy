import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utilities/utils.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [_heading(), _bottom(), _information()],
        ),
      ),
    );
  }

  Widget _heading() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 50),
      child: Center(
        child: Text(
          'PERFORMANCE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
            fontSize: Get.width / 19,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  Widget _bottom() {
    // final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Row(
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
                  color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
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
                    color: HexColorUtils.getColorFromHex(CustomColors.primary),
                  ),
                  Text(
                    '2.5 (255 reviews)',
                    style: GoogleFonts.lato(
                      fontSize: Get.width / 28,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _information() {
    return Column(
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
                  color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
                  fontSize: Get.width / 26,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, Get.height / 100, 0, 0),
          child: Text('program',
              style: GoogleFonts.lato(
                  color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
                  fontSize: Get.width / 26,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
