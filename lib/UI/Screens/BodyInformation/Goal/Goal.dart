import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/controllers.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/Goal/GoalLogic.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class Goal extends StatelessWidget {
  final ButtonController _buttonController = Get.put(ButtonController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: Column(
          children: [
            _heading(),
            _buttons(),
          ],
        ),
      ),
    );
  }

  Widget _heading() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 50),
      child: Center(
        child: Text(
          'LAST STEPS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
            fontSize: Get.width / 19,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }

  Widget _buttons() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, Get.height / 7.5, 20, 0),
      child: CustomCard(
        widget: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Get.height / 35),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'GOAL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.whiteText),
                      fontSize: Get.width / 21,
                      letterSpacing: 1.6,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => NormalButton(
                value: _buttonController.bulkUp.value,
                onTap: _buttonController.bulkUpFunction,
              ).buttonOne(),
            ),
            Obx(
              () => NormalButton(
                value: _buttonController.lean.value,
                onTap: _buttonController.leanFunction,
              ).buttonTwo(),
            ),
            Obx(
              () => NormalButton(
                value: _buttonController.loseWeight.value,
                onTap: _buttonController.loseFunction,
              ).buttonThree(),
            ),
            Obx(
              () => NormalButton(
                value: _buttonController.strengthTraining.value,
                onTap: _buttonController.strengthFunction,
              ).buttonFour(),
            ),
            GestureDetector(
              onTap: () {
                if (_buttonController.bulkUp.value == false) {
                  _buttonController.goalSelection('Bulk Up');
                } else if (_buttonController.lean.value == false) {
                  _buttonController.goalSelection('Lean');
                } else if (_buttonController.loseWeight.value == false) {
                  _buttonController.goalSelection('Lose Weight');
                } else if (_buttonController.strengthTraining.value == false) {
                  _buttonController.goalSelection('Strength Training');
                } else {
                  Get.snackbar(
                    'Error',
                    'Please choose a goal to continue',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }
              },
              child: Padding(
                padding: const EdgeInsets.fromLTRB(13, 25, 13, 25),
                child: CustomButton(
                  text: 'CONTINUE',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
