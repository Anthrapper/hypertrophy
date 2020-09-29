import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/Auth/authController.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
