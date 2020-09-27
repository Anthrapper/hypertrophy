import 'package:get/get.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/BodyInfo.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/GenderSelection/GenderSelection.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/Goal.dart';
import 'package:hypertrophy/UI/Screens/OnBoarding/Onboarding.dart';
import 'package:hypertrophy/UI/Screens/Login/login.dart';
import 'package:hypertrophy/UI/Screens/SignUp/SignUp.dart';

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
    GetPage(
      name: '/signup',
      page: () => SignUp(),
    ),
    GetPage(
      name: '/genderselection',
      page: () => GenderSelection(),
    ),
    GetPage(
      name: '/bodyinfo',
      page: () => BodyInfo(),
    ),
    GetPage(
      name: '/goal',
      page: () => Goal(),
    )
  ];
}
