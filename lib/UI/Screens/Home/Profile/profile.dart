import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/Services/Controllers/authController.dart';
import 'package:hypertrophy/UI/Screens/Login/Forget%20Password/resetLink.dart';
import 'package:hypertrophy/utilities/utils.dart';

class ProfilePage extends StatelessWidget {
  final AuthController _authController = Get.put(AuthController());
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: ListView(
          children: [
            _heading(),
            _intro(),
            _information(),
            _list(),
            _information2(),
            _list2(),
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
          'PROFILE',
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

  Widget _intro() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Container(
            child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/Rectangle 25.png'),
            ),
            SizedBox(width: 10),
            Column(
              children: <Widget>[
                Text(
                  'AMY SMITH',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        HexColorUtils.getColorFromHex(CustomColors.whiteText),
                    fontSize: Get.width / 21,
                    letterSpacing: 1.6,
                  ),
                ),
                SizedBox(height: Get.height / 70),
                Text('Strength Training',
                    style: TextStyle(
                      fontSize: Get.width / 30,
                      color: HexColorUtils.getColorFromHex(
                          CustomColors.textfieldText),
                    )),
              ],
            ),
          ],
        )),
      ),
    );
  }

  Widget _information() {
    return Container(
      color: HexColorUtils.getColorFromHex(CustomColors.background),
      child: Padding(
        padding: EdgeInsets.only(left: Get.width / 20),
        child: Text('Profile  And  Account'),
      ),
    );
  }

  Widget _list() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  Get.width / 20, Get.height / 30, Get.width / 5, 0),
              child: Text(
                'Change Goal',
                style: GoogleFonts.sourceSansPro(
                    fontSize: Get.width / 25,
                    color:
                        HexColorUtils.getColorFromHex(CustomColors.whiteText),
                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  Get.width / 20, Get.height / 40, Get.width / 5, 0),
              child: Text(
                'Update Body Information',
                style: GoogleFonts.sourceSansPro(
                    fontSize: Get.width / 25,
                    color:
                        HexColorUtils.getColorFromHex(CustomColors.whiteText),
                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  Get.width / 20, Get.height / 40, Get.width / 5, 0),
              child: Text(
                'Reset Password',
                style: GoogleFonts.sourceSansPro(
                    fontSize: Get.width / 25,
                    color:
                        HexColorUtils.getColorFromHex(CustomColors.whiteText),
                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {
              Get.to(
                LinkPage(),
              );
            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, Get.height / 40, Get.width / 5, Get.height / 40),
              child: Text(
                'Log Out',
                style: GoogleFonts.sourceSansPro(
                    fontSize: Get.width / 25,
                    color:
                        HexColorUtils.getColorFromHex(CustomColors.whiteText),
                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {
              _authController.signOut();
            },
          ),
        ],
      ),
    );
  }

  Widget _information2() {
    return Container(
      color: HexColorUtils.getColorFromHex(CustomColors.background),
      child: Padding(
        padding: EdgeInsets.only(left: Get.width / 20),
        child: Text('Support'),
      ),
    );
  }

  Widget _list2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                Get.width / 20, Get.height / 30, Get.width / 5, 0),
            child: Text(
              'Contact Support',
              style: GoogleFonts.sourceSansPro(
                  fontSize: Get.width / 25,
                  color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
                  letterSpacing: 1.6),
            ),
          ),
          onTap: () {},
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                Get.width / 20, Get.height / 40, Get.width / 5, 0),
            child: Text(
              'Rate On AppStore',
              style: GoogleFonts.sourceSansPro(
                  fontSize: Get.width / 25,
                  color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
                  letterSpacing: 1.6),
            ),
          ),
          onTap: () {},
        ),
        InkWell(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, Get.height / 40, Get.width / 5, Get.height / 40),
            child: Text(
              'Share With Friends',
              style: GoogleFonts.sourceSansPro(
                  fontSize: Get.width / 25,
                  color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
                  letterSpacing: 1.6),
            ),
          ),
          onTap: () {},
        ),
      ],
    );
  }
}
