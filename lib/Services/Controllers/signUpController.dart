import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController emailController;
  TextEditingController fname;
  TextEditingController lname;
  TextEditingController passController;
  @override
  void onInit() {
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
