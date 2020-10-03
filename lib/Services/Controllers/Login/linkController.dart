import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkController extends GetxController {
  TextEditingController emailController;
  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController?.dispose();
    super.onClose();
  }

  sendResetLink(String email) async {
    FirebaseAuth mAuth = FirebaseAuth.instance;

    try {
      await mAuth.sendPasswordResetEmail(email: email).whenComplete(() {
        if (Get.isDialogOpen) {
          Get.back();
        }
        Get.back();
      });
    } catch (e) {
      // Get.snackbar(
      //   'Error ',
      //   e.message,
      //   snackPosition: SnackPosition.BOTTOM,
      //   colorText: Colors.white,
      //   barBlur: 10,
      //   backgroundColor: HexColorUtils.getColorFromHex(CustomColors.cardColor),
      //   boxShadows: [
      //     BoxShadow(
      //       color: HexColorUtils.getColorFromHex(CustomColors.textfieldText),
      //       blurRadius: 8.0,
      //     ),
      //   ],
      //   icon: Icon(
      //     Icons.error,
      //     size: 30,
      //     color: Colors.white,
      //   ),
      // );
    }
  }
}
