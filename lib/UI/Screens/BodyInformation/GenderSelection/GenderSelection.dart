import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/controllers.dart';
import 'package:hypertrophy/UI/Screens/BodyInformation/GenderSelection/GenderBoxes.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class GenderSelection extends StatelessWidget {
  final GenderController _genderController = Get.put(GenderController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        widget: SafeArea(
          child: Column(
            children: [
              _heading(),
              _genderSelection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _genderSelection() {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, Get.height / 7.5, 20, 0),
      child: CustomCard(
        widget: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: Get.height / 25),
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    'BODY INFORMATION',
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
              () => Boxes(
                value: _genderController.maleSelected.value,
                onTap: _genderController.maleOntap,
              ).boxOne(),
            ),
            Obx(
              () => Boxes(
                value: _genderController.femaleSelected.value,
                onTap: _genderController.femaleOntap,
              ).boxTwo(),
            ),
            GestureDetector(
              onTap: () {
                if (_genderController.selected.value == false) {
                  Get.toNamed('/bodyinfo');
                } else {
                  Get.snackbar('Error', 'Please choose a gender to continue',
                      snackPosition: SnackPosition.BOTTOM);
                }
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(13, Get.height / 25, 13, 25),
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
}
