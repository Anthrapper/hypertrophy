import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';

import 'package:hypertrophy/utilitis/utils.dart';

class OnBoardingOne extends StatelessWidget {
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
                  'assets/images/ob1.png',
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
              width: Get.width / 1.6,
              text: 'Individually',
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.6,
            child: CustomText(
              width: Get.width / 2.1,
              text: 'Tailored',
              color: Colors.white,
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.45,
            child: CustomText(
              width: Get.width / 1.6,
              text: 'Programs',
              color: HexColorUtils.getColorFromHex(CustomColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}
