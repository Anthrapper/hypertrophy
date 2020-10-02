import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Database/database.dart';

class BodyController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;

  final List heightData = [
    {
      "display": "Cm",
      "value": "Cm",
    },
    {
      "display": "M",
      "value": "M",
    },
  ];
  final List weightData = [
    {
      "display": "Kg",
      "value": "Kg",
    },
    {
      "display": "lb",
      "value": "lb",
    },
  ];
  var heightValue = 'Cm'.obs;
  var weightValue = 'Kg'.obs;
  TextEditingController age;
  TextEditingController height;
  TextEditingController weight;
  heightChanged(String val) {
    print(val);
    heightValue.value = val;
  }

  weightChanged(String val) {
    print(val);

    weightValue.value = val;
  }

  addData(String age, String height, String weight) async {
    final User user = auth.currentUser;
    final uid = user.uid;
    print(uid);
    await HyperDb().updateUser(field: 'age', val: age, uid: uid);
    await HyperDb().updateUser(field: 'height', val: height, uid: uid);
    await HyperDb()
        .updateUser(field: 'weight', val: weight, uid: uid)
        .whenComplete(() => Get.toNamed('/goal'));
  }

  @override
  void onInit() {
    age = TextEditingController();
    height = TextEditingController();
    weight = TextEditingController();

    super.onInit();
  }

  @override
  void onClose() {
    age?.dispose();
    height?.dispose();
    weight?.dispose();
    super.onClose();
  }
}
