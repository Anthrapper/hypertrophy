import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/utilitis/utils.dart';

class OnBoardingTwo extends StatelessWidget {
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
                  'assets/images/ob2.png',
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
              'Personalized',
              style: TextStyle(
                fontSize: 38,
                color: HexColorUtils.getColorFromHex(CustomColors.primary),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.6,
            child: Text(
              'Diet',
              style: TextStyle(
                fontSize: 38,
                color: HexColorUtils.getColorFromHex(CustomColors.primary),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.45,
            child: Text(
              'Plans',
              style: TextStyle(
                  fontSize: 38,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
