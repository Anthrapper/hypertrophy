import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  FirebaseAuth _auth = FirebaseAuth.instance;
  Rx<User> _fireBaseUser = Rx<User>();
  // String get hyperUser => _fireBaseUser.value?.email;

  @override
  void onInit() {
    _fireBaseUser.bindStream(_auth.authStateChanges());
    super.onInit();
  }

  void signUp(String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        'Error creating the account',
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  void logOut() async {
    try {
      _auth.signOut();
    } catch (e) {
      Get.snackbar(
        'Error Signing out',
        e.message,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
