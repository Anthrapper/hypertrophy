import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/controllers.dart';
import 'package:hypertrophy/UI/Screens/OnBoarding/obFour.dart';
import 'package:hypertrophy/UI/Screens/OnBoarding/obOne.dart';
import 'package:hypertrophy/UI/Screens/OnBoarding/obThree.dart';
import 'package:hypertrophy/UI/Screens/OnBoarding/obTwo.dart';
import 'package:hypertrophy/utilities/constants/colors.dart';
import 'package:hypertrophy/utilities/hexColor.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final OnBoardController _onBoardController = Get.put(OnBoardController());

  final int _numPages = 4;
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive
            ? HexColorUtils.getColorFromHex(CustomColors.primary)
            : HexColorUtils.getColorFromHex(CustomColors.hintText),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _onBoardController.pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                children: <Widget>[
                  OnBoardingOne(),
                  OnBoardingTwo(),
                  OnBoardingThree(),
                  OnBoardingFour(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
              ),
            ),
          ],
        ),
      ),

      //
    );
  }
}
