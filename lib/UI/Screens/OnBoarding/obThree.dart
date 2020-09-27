import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class OnBoardingThree extends StatelessWidget {
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
                  'assets/images/ob3.png',
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
            child: CustomText(
              text: 'Complete',
              color: Colors.white,
              width: Get.width / 1.6,
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.6,
            child: CustomText(
              text: 'With',
              color: Colors.white,
              width: Get.width / 3.1,
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.45,
            child: CustomText(
              text: 'Progress',
              color: HexColorUtils.getColorFromHex(CustomColors.primary),
              width: Get.width / 1.6,
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.32,
            child: CustomText(
              text: 'Tracking',
              color: HexColorUtils.getColorFromHex(CustomColors.primary),
              width: Get.width / 1.7,
            ),
          ),
        ],
      ),
    );
  }
}
