import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  signOut() async {
    await _auth.signOut().whenComplete(() => Get.offAllNamed('/onboard'));
  }

  bool checkLogin() {
    if (_auth.currentUser != null) {
      print(_auth.currentUser.uid);
      return false;
    } else {
      return true;
    }
  }
}
