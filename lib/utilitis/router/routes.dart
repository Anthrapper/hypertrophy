import 'package:get/get.dart';
import 'package:hypertrophy/UI/Screens/OnBoarding/Onboarding.dart';
import 'package:hypertrophy/UI/Screens/Login/login.dart';

class Routes {
  static final route = [
    GetPage(
      name: '/login',
      page: () => LoginPage(),
    ),
    GetPage(
      name: '/onboard',
      page: () => OnboardingScreen(),
    ),
  ];
}
