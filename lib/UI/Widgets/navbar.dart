import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hypertrophy/UI/Screens/Diet/diet.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/leaderboard.dart';
import 'package:hypertrophy/UI/Screens/Perfomance/trainers.dart';
import 'package:hypertrophy/UI/Screens/Profile/profile.dart';
import 'package:hypertrophy/utilities/constants/colors.dart';
import 'package:hypertrophy/utilities/Icons/custom_icons.dart';
import 'package:hypertrophy/utilities/hexColor.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class NavBar extends StatelessWidget {
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> buildScreens() {
    return [LeaderBoard(), DietPage(), TrainerPage(), ProfilePage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          CustomIcons.dashboard,
          size: 30,
        ),
        activeColor: HexColorUtils.getColorFromHex(CustomColors.primary),
        inactiveColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CustomIcons.gym,
          size: 30,
        ),
        activeColor: HexColorUtils.getColorFromHex(CustomColors.primary),
        inactiveColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CustomIcons.diet,
          size: 30,
        ),
        activeColor: HexColorUtils.getColorFromHex(CustomColors.primary),
        inactiveColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CustomIcons.profile,
          size: 30,
        ),
        activeColor: HexColorUtils.getColorFromHex(CustomColors.primary),
        inactiveColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: controller,
      screens: buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.black,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears.
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
      // decoration: NavBarDecoration(
      //   borderRadius: BorderRadius.circular(10.0),
      //   colorBehindNavBar: Colors.white,
      // ),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}
