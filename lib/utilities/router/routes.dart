import 'package:get/get.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/BodyInfo.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/GenderSelection/GenderSelection.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/Goal.dart';
import 'package:hypertrophy/UI/Screens/Forget%20Password/resetLink.dart';
import 'package:hypertrophy/UI/Screens/Forget%20Password/resetpassword.dart';
import 'package:hypertrophy/UI/Screens/OnBoarding/Onboarding.dart';
import 'package:hypertrophy/UI/Screens/Login/login.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/leaderboard.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/programs.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/trainers.dart';
import 'package:hypertrophy/UI/Screens/SignUp/SignUp.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';

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
    GetPage(
      name: '/reset',
      page: () => ResetPage(),
    ),
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
  ];
}
