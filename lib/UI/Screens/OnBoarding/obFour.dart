import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/utilitis/utils.dart';

class OnBoardingFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: Get.height,
            width: Get.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/ob4.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: HexColorUtils.getColorFromHex(CustomColors.op)
                    .withOpacity(0.8),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            alignment: Alignment.centerLeft,
            child: Image.asset('assets/images/logo.png'),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.8,
            child: Text(
              'Get Started',
              style: TextStyle(
                fontSize: 38,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.53,
            child: Container(
              width: Get.width * 0.9,
              height: Get.height * 0.055,
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(22.0)),
                onPressed: () {
                  Get.toNamed('/login');
                },
                color: HexColorUtils.getColorFromHex(CustomColors.primary),
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: HexColorUtils.getColorFromHex(
                      CustomColors.cardColor,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.35,
            child: Container(
              width: Get.width * 0.9,
              height: Get.height * 0.055,
              child: FlatButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(22.0)),
                onPressed: () {},
                color: HexColorUtils.getColorFromHex(CustomColors.cardColor),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    color: HexColorUtils.getColorFromHex(
                      CustomColors.hintText,
                    ),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
