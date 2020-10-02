import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/Services/Controllers/controllers.dart';
import 'package:hypertrophy/Services/Validators/validator.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class LoginPage extends StatelessWidget {
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
            _loginForm(),
            _bottomText(),
          ],
        ),
      ),
    );
  }

  Widget _bottomText() {
    return Padding(
      padding: EdgeInsets.only(top: Get.height / 15),
      child: GestureDetector(
        onTap: () {
          Get.toNamed('/signup');
        },
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: "New Here ? ",
                style: GoogleFonts.michroma(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              TextSpan(
                text: " Sign Up",
                style: GoogleFonts.michroma(
                  textStyle: TextStyle(
                    color: HexColorUtils.getColorFromHex(CustomColors.primary),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginForm() {
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
                  child: Text(
                    'WELCOME BACK',
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
                  controller: _loginController.emailController,
                  secureText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(13, 20, 13, 10),
                child: CustomTextField(
                  controller: _loginController.passController,
                  hintText: 'Password',
                  secureText: true,
                  // suffix: FaIcon(
                  //   Icons.remove_red_eye_outlined,
                  //   color: HexColorUtils.getColorFromHex(CustomColors.hintText),
                  // ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    Loading().showLoading();
                    _loginController.login(
                        _loginController.emailController.text,
                        _loginController.passController.text);
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 25, 13, 5),
                  child: CustomButton(
                    text: 'LOGIN',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed('/content');
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, Get.height / 30, 20, 20),
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: Get.width / 33,
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.hintText),
                    ),
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
          'LOGIN',
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
