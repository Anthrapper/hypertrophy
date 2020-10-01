import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/Services/Controllers/controllers.dart';
import 'package:hypertrophy/Services/Validators/validator.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class LinkPage extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());
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
                  hintText: 'New Password',
                  validator: (val) {
                    Validators().emailValidator(val);
                  },
                  controller: _loginController.emailController,
                  secureText: true,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  if (_formKey.currentState.validate()) {
                    Loading().showLoading();
                //    FirebaseAuth mAuth = FirebaseAuth.instance;
               //     await mAuth.sendPasswordResetEmail(email: _email);
                    _loginController.login(
                        _loginController.emailController.text,
                        _loginController.passController.text);
                  }
                },
                child: Padding(
                  padding:  EdgeInsets.fromLTRB(13, 25, 13, Get.height/22),
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
