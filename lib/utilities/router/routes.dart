import 'package:get/get.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/BodyInfo.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/GenderSelection/GenderSelection.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/Goal.dart';
import 'package:hypertrophy/UI/Screens/Home/Perfomance/LeaderBoard/leaderboard.dart';
import 'package:hypertrophy/UI/Screens/Home/Profile/profile.dart';
import 'package:hypertrophy/UI/Screens/Login/Forget%20Password/resetLink.dart';

import 'package:hypertrophy/UI/Screens/OnBoarding/Onboarding.dart';
import 'package:hypertrophy/UI/Screens/Login/login.dart';

import 'package:hypertrophy/UI/Screens/SignUp/SignUp.dart';
import 'package:hypertrophy/UI/Widgets/navbar.dart';

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
    ),

    GetPage(
      name: '/leader',
      page: () => LeaderBoard(),
    ),
    // GetPage(
    //   name: '/reset',
    //   page: () => ResetPage(),
    // ),
    GetPage(
      name: '/link',
      page: () => LinkPage(),
    ),

    GetPage(
      name: '/home',
      page: () => NavBar(),
    ),

    GetPage(
      name: '/profile',
      page: () => ProfilePage(),
    ),
  ];
}
