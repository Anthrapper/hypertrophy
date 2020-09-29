import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/utilities/utils.dart';

class LoginController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _fireBaseUser = Rx<User>();

  TextEditingController emailController;
  TextEditingController passController;
  @override
  void onInit() {
    _fireBaseUser.bindStream(_auth.authStateChanges());
    emailController = TextEditingController();
    passController = TextEditingController();
    super.onInit();
  }

  void login(String email, String password) async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email, password: password)
          .then((authResult) => print(authResult.user));
      if (Get.isDialogOpen) {
        Get.back();
      }
    } catch (e) {
      if (Get.isDialogOpen) {
        Get.back();
      }
      Get.snackbar(
        'Error logging in',
        e.message,
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
        ),
      );
    }
  }

  @override
  void onClose() {
    emailController?.dispose();
    passController?.dispose();
    super.onClose();
  }
}
