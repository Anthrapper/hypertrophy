import 'package:get/get.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/BodyInfo.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/GenderSelection/GenderSelection.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/Goal.dart';
import 'package:hypertrophy/UI/Screens/Login/Forget%20Password/resetLink.dart';

import 'package:hypertrophy/UI/Screens/OnBoarding/Onboarding.dart';
import 'package:hypertrophy/UI/Screens/Login/login.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/ContentDetails/content.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/ContentDetails/details.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/LeaderBoard/leaderboard.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/ProgramsTrainers/programs.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/ProgramsTrainers/trainers.dart';
import 'package:hypertrophy/UI/Screens/Profile/profile.dart';

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
      name: '/load',
      page: () => TrainerPage(),
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
      name: '/program',
      page: () => ProgramPage(),
    ),
    GetPage(
      name: '/home',
      page: () => NavBar(),
    ),
    GetPage(
      name: '/detail',
      page: () => DetailPage(),
    ),
    GetPage(
      name: '/content',
      page: () => ContentPage(),
    ),
    GetPage(
      name: '/profile',
      page: () => ProfilePage(),
    ),
  ];
}
