import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/utilities/utils.dart';

class Loading {
  Future showLoading() {
    return Get.dialog(
      Center(
        child: CircularProgressIndicator(),
      ),
      barrierDismissible: false,
    );
  }

  noInternet() {
    return Get.snackbar(
      'Error',
      "Check Your Interet Connection",
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
      ),
    );
  }
}
