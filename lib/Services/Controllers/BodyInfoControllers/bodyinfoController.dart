import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodyController extends GetxController {
  TextEditingController age;
  TextEditingController height;
  TextEditingController weight;
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
