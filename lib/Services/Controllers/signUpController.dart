import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Models/userModel.dart';
import 'package:hypertrophy/Services/Database/database.dart';
import 'package:hypertrophy/utilities/utils.dart';

class SignUpController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _fireBaseUser = Rx<User>();
  Future<String> signUp(
      String email, String password, String fname, String lname) async {
    String retVal = 'Error';
    HyperUser _user = HyperUser();
    try {
      await _auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((authResult) async {
        _user.uid = authResult.user.uid;
        _user.email = authResult.user.email;
        _user.fName = fname;
        _user.lName = lname;
        _user.rewardPoints = 100;
        await HyperDb().createUser(_user);
        retVal = 'success';
      });
      if (Get.isDialogOpen) {
        Get.back();
      }
      Get.offNamedUntil('/genderselection', (route) => false);
    } catch (e) {
      if (Get.isDialogOpen) {
        Get.back();
      }
      Get.snackbar(
        'Error creating the account',
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
    return retVal;
  }

  TextEditingController emailController;
  TextEditingController fname;
  TextEditingController lname;
  TextEditingController passController;
  @override
  void onInit() {
    _fireBaseUser.bindStream(_auth.authStateChanges());
    emailController = TextEditingController();
    passController = TextEditingController();
    fname = TextEditingController();
    lname = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    emailController?.dispose();
    passController?.dispose();
    fname?.dispose();
    lname?.dispose();
    super.onClose();
  }
}
