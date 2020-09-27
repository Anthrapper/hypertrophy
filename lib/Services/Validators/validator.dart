import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/utilities/hexColor.dart';
import 'package:hypertrophy/utilities/utils.dart';

class Validators {
  validate() {
    print('is email');
    return true;
  }

  error() {
    return Get.snackbar('Error', 'Wrong Email provided',
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.white,
        barBlur: 10,
        backgroundColor: HexColorUtils.getColorFromHex(CustomColors.cardColor),
        boxShadows: [
          BoxShadow(
            color: HexColorUtils.getColorFromHex(CustomColors.textfieldText),
            blurRadius: 8.0,
          ),
        ],
        icon: Icon(
          Icons.error,
          size: 30,
          color: Colors.white,
        ));
  }

  emailValidator(String text) {
    print(text);
    GetUtils.isEmail(text) ? validate() : error();
  }
}
