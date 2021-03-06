import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hypertrophy/Services/Controllers/Login/linkController.dart';
import 'package:hypertrophy/Services/Validators/validator.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class LinkPage extends StatelessWidget {
  final LinkController _linkController = Get.put(LinkController());
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColorUtils.getColorFromHex(CustomColors.bg),
      body: SafeArea(
        child: ListView(
          children: [
            _heading(),
            _linkForm(),
          ],
        ),
      ),
    );
  }

  Widget _linkForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, Get.height / 6, 20, 0),
        child: CustomCard(
          widget: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: Get.height / 25),
                child: Center(
                  child: Text(
                    'GET A RESET LINK',
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
              Padding(
                padding: EdgeInsets.fromLTRB(13, Get.height / 25, 13, 10),
                child: CustomTextField(
                  hintText: 'Email',
                  validator: (val) {
                    Validators().emailValidator(val);
                  },
                  controller: _linkController.emailController,
                  secureText: false,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if (_formKey.currentState.validate()) {
                    Loading().showLoading();
                    _linkController
                        .sendResetLink(_linkController.emailController.text);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(13, 25, 13, Get.height / 22),
                  child: CustomButton(
                    text: 'RESET',
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
          'FORGET PASSWORD',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
            fontSize: Get.width / 28,
            letterSpacing: 1.6,
          ),
        ),
      ),
    );
  }
}
