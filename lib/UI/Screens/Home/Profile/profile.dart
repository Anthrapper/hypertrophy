import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/Services/Controllers/HomeControllers/profileController.dart';
import 'package:hypertrophy/utilities/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class ProfilePage extends StatelessWidget {
  final ProfileController _profileController = Get.put(ProfileController());
  @override
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
      child: Container(
        child: Row(
          children: <Widget>[
            Obx(
              () => GestureDetector(
                onTap: () {
                  _profileController.uploadImage();
                },
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: _profileController.pic.value == null
                      ? AssetImage('assets/images/Rectangle 25.png')
                      : NetworkImage(_profileController.pic.value),
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Obx(
                  () => Text(
                    _profileController.name.value,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
                      fontSize: Get.width / 30,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
                SizedBox(height: Get.height / 70),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Obx(
                    () => Text(
                      _profileController.goal.value,
                      style: TextStyle(
                        fontSize: Get.width / 40,
                        color: HexColorUtils.getColorFromHex(
                            CustomColors.textfieldText),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
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
            onTap: () {
              Get.toNamed('/goal');
            },
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
            onTap: () {
              Get.toNamed('/bodyinfo');
            },
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
              Get.toNamed('/link');
            },
          ),
          InkWell(
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                  20, Get.height / 40, Get.width / 5, Get.height / 40),
              child: Text(
                'Logs',
                style: GoogleFonts.sourceSansPro(
                    fontSize: Get.width / 25,
                    color:
                        HexColorUtils.getColorFromHex(CustomColors.whiteText),
                    letterSpacing: 1.6),
              ),
            ),
            onTap: () {},
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
    Future<void> _launchURL(String url) async {
      const url = 'https://flutter.dev';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

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
          onTap: () {
            _launchURL('');
          },
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
          onTap: () {
            Share.share('check out this amazing app https://example.com',
                subject: 'Look what I made!');
          },
        ),
      ],
    );
  }
}
