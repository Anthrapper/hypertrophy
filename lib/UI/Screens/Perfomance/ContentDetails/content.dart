import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/UI/Widgets/custom_card.dart';

import '../../../../utilities/utils.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          _heading(),
          _top(),
          _bottom(),

          // Container(child: Text('Exercises',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText)) ),alignment: Alignment.center,),
          //
          // Padding(
          // padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
          // child: CustomCard(widget:Row(
          // children: [
          // Padding(
          // padding: EdgeInsets.fromLTRB(10, Get.height/100, 10, Get.height/100),
          // child: Text('Push Ups', style: TextStyle(
          // fontWeight: FontWeight.bold,
          // color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),
          // fontSize: Get.width / 25,
          // ),),
          // ),
          // Padding(
          // padding: const EdgeInsets.only(left: 125),
          // child: Row(
          // children: [
          // Text('2SETS',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),fontSize: Get.width/40),textAlign: TextAlign.end ),
          // Text('-2SETS',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),fontSize: Get.width/40),textAlign: TextAlign.end, ),
          // ],
          // ),
          // ),
          // ],),),
          // ),
          // Padding(
          // padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
          // child: CustomCard(widget:Row(
          // children: [
          // Padding(
          // padding: EdgeInsets.fromLTRB(10, Get.height/100, 10, Get.height/100),
          // child: Text('Pull Ups', style: TextStyle(
          // fontWeight: FontWeight.bold,
          // color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),
          // fontSize: Get.width / 25,
          // ),),
          // ),
          // Padding(
          // padding: const EdgeInsets.only(left: 140),
          // child: Row(
          // children: [
          // Text('2SETS',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),fontSize: Get.width/40),textAlign: TextAlign.end ),
          // Text('-2SETS',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),fontSize: Get.width/40),textAlign: TextAlign.end, ),
          // ],
          // ),
          // ),
          // ],),
          //
          // ),
          // ),
          // Padding(
          // padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
          // child: Container(child: Text('Diet',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText)) ),alignment: Alignment.center,),
          // ),
          // Padding(
          // padding: EdgeInsets.fromLTRB(20, Get.height / 50, 20, 0),
          // child: CustomCard(widget:Row(
          // children: [
          // Padding(
          // padding: EdgeInsets.fromLTRB(10, Get.height/100, 10, Get.height/100),
          // child: Text('Eggs', style: TextStyle(
          // fontWeight: FontWeight.bold,
          // color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),
          // fontSize: Get.width / 25,
          // ),),
          // ),
          // Padding(
          // padding: const EdgeInsets.only(left: 175),
          // child: Text('Breakfast',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
          // CustomColors.whiteText),fontSize: Get.width/40),textAlign: TextAlign.end ),
          // ),
          // ],),),
          // ),
        ],
      )),
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

  Widget _top() {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
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

  Widget _bottom() {
    return Column(
      children: [
        Container(
          child: Text('Exercises',
              style: GoogleFonts.lato(
                  color:
                      HexColorUtils.getColorFromHex(CustomColors.whiteText))),
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
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
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
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
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
                    color:
                        HexColorUtils.getColorFromHex(CustomColors.whiteText))),
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
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
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
    );
  }
}
