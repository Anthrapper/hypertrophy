import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Models/userModel.dart';
import 'package:hypertrophy/utilities/utils.dart';

class HyperDb {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> createUser(HyperUser user) async {
    String retVal = 'error';
    try {
      await _firestore.collection("users").doc(user.uid).set(
        {
          'first_name': user.fName,
          'last_name': user.lName,
          'reward_points': user.rewardPoints,
        },
      );
      retVal = 'Success';
    } catch (e) {
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

  Future<String> updateUser({
    @required String field,
    @required String uid,
    @required String val,
  }) async {
    print('$val $uid $field');
    String retVal = 'error';
    try {
      await _firestore.collection("users").doc(uid).set({
        field: val,
      }, SetOptions(merge: true));
      retVal = 'Success';
    } catch (e) {
      Get.snackbar(
        'Error Occured',
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
}
