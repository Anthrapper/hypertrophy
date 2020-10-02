import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

import '../../../utilities/utils.dart';

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
          children: [
            _heading(),
            _Top(),
            _bottom(),
            _information()




          ],
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

  Widget _Top() {
    final pHeight = MediaQuery.of(context).size.height;
    final pWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(Get.width / 20),
      child: Stack(

        children: [
          Padding(
            padding:  EdgeInsets.only(top: Get.height/50),
            child: Image(
              image: AssetImage('assets/images/Rectangle 21.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB( 110,Get.height/50,0,0),
              child: Image(
            image: AssetImage('assets/images/Rectangle 22.png'),
          ),),
          Padding(
            padding: EdgeInsets.only(left: 6),
            child: Image(
              image: AssetImage('assets/images/Rectanglebig.png'),
            ),
          ),
          Padding(
            padding:  EdgeInsets.fromLTRB(25, pHeight*.25, 0, 0),
            child: Column(

crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Padding(
                  padding: EdgeInsets.only(left: pWidth / 20),
                  child: Text(
                    'Double your Stamina in',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: HexColorUtils.getColorFromHex(
                          CustomColors.whiteText),
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
                      color: HexColorUtils.getColorFromHex(
                          CustomColors.whiteText),
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
                      color: HexColorUtils.getColorFromHex(
                          CustomColors.whiteText),
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
Widget _bottom(){
  final pHeight = MediaQuery.of(context).size.height;
  final pWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [

        Image(image: AssetImage('assets/images/Rectangle detail.png'),),
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
            SizedBox(height: Get.height/90),
            Padding(
              padding: EdgeInsets.only(bottom: Get.height/40),
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
                  letterSpacing: 1.2,fontWeight: FontWeight.bold
                  ,color: HexColorUtils.getColorFromHex(
                      CustomColors.whiteText),

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
            child: Text('About',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
                CustomColors.textfieldText)) ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.fromLTRB(20,Get.height/60,0,0 ),
          child: Text('Description about the training',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
              CustomColors.whiteText),fontSize: Get.width / 26,
            letterSpacing: 1.2,fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding:  EdgeInsets.fromLTRB(20,Get.height/100,0,0 ),
          child: Text('program',style:GoogleFonts.lato(color: HexColorUtils.getColorFromHex(
              CustomColors.whiteText),fontSize: Get.width / 26,
            letterSpacing: 1.2,fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
