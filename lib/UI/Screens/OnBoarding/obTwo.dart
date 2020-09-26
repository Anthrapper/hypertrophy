import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
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
            child: CustomText(
              text: 'Personalized',
              color: HexColorUtils.getColorFromHex(CustomColors.primary),
              width: Get.width / 1.3,
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.6,
            child: CustomText(
              text: 'Diet',
              color: HexColorUtils.getColorFromHex(CustomColors.primary),
              width: Get.width / 4,
            ),
          ),
          Positioned(
            left: 20,
            top: Get.height / 1.45,
            child: CustomText(
              text: 'Plans',
              color: Colors.white,
              width: Get.width / 3.2,
            ),
          ),
        ],
      ),
    );
  }
}
