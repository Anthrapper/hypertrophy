import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/controllers.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class BodyInfo extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final BodyController _bodyController = Get.put(BodyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: ListView(
          children: [
            _heading(),
            _bodyForm(),
          ],
        ),
      ),
    );
  }

  Widget _bodyForm() {
    return Form(
      key: _formKey,
      child: Padding(
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
                        color: HexColorUtils.getColorFromHex(
                            CustomColors.whiteText),
                        fontSize: Get.width / 21,
                        letterSpacing: 1.6,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    13, Get.height / 20, Get.width / 1.9, 10),
                child: CustomTextField(
                  hintText: 'Age',
                  controller: _bodyController.age,
                  secureText: false,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: Get.height / 10,
                    width: Get.width / 2,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          13, Get.height / 40, Get.width / 8, 10),
                      child: CustomTextField(
                        hintText: 'Height',
                        controller: _bodyController.height,
                        secureText: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 6.5,
                    child: Obx(
                      () => CustomDropDown(
                        hint: 'Cm',
                        dText: 'display',
                        data: _bodyController.heightData,
                        onChanged: (val) {
                          _bodyController.heightChanged(val);
                        },
                        drValue: _bodyController.heightValue.value,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: Get.height / 10,
                    width: Get.width / 2,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          13, Get.height / 40, Get.width / 8, 10),
                      child: CustomTextField(
                        hintText: 'Weight',
                        controller: _bodyController.weight,
                        secureText: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 6.5,
                    child: Obx(
                      () => CustomDropDown(
                        hint: 'Kg',
                        dText: 'display',
                        data: _bodyController.weightData,
                        onChanged: (val) {
                          _bodyController.weightChanged(val);
                        },
                        drValue: _bodyController.weightValue.value,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13, Get.height / 35, 13, 25),
                child: GestureDetector(
                  onTap: () {
                    if (_bodyController.age.text != null &&
                        _bodyController.height.text != null &&
                        _bodyController.weight.text != null) {
                      String height = _bodyController.height.text +
                          '' +
                          _bodyController.heightValue.value;
                      String weight = _bodyController.weight.text +
                          '' +
                          _bodyController.weightValue.value;
                      _bodyController.addData(
                          _bodyController.age.text, height, weight);
                    }
                  },
                  child: CustomButton(
                    text: 'CONTINUE',
                  ),
                ),
              ),
            ],
          ),
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
