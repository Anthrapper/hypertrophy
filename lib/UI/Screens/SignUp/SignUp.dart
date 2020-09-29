import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hypertrophy/Services/Controllers/signUpController.dart';
import 'package:hypertrophy/Services/Validators/validator.dart';
import 'package:hypertrophy/UI/Widgets/widgets.dart';
import 'package:hypertrophy/utilities/utils.dart';

class SignUp extends StatelessWidget {
  final SignUpController _signUpController = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        widget: SafeArea(
          child: ListView(
            children: [
              _heading(),
              _signUpForm(),
              _bottomText(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signUpForm() {
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
                      'JOIN NOW',
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
                padding: EdgeInsets.fromLTRB(13, Get.height / 25, 13, 10),
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: Get.width / 2.3),
                      child: CustomTextField(
                        hintText: 'First Name',
                        controller: _signUpController.fname,
                        secureText: false,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: Get.width / 2.3),
                      child: CustomTextField(
                        hintText: 'Last Name',
                        controller: _signUpController.lname,
                        secureText: false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13, Get.height / 35, 13, 10),
                child: CustomTextField(
                  hintText: 'Email',
                  validator: (val) {
                    Validators().emailValidator(val);
                  },
                  controller: _signUpController.emailController,
                  secureText: false,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(13, Get.height / 35, 13, 10),
                child: CustomTextField(
                  controller: _signUpController.passController,
                  hintText: 'Password',
                  secureText: true,
                  suffix: FaIcon(
                    Icons.remove_red_eye_outlined,
                    color: HexColorUtils.getColorFromHex(CustomColors.hintText),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState.validate()) {
                    Loading().showLoading();
                    _signUpController.signUp(
                        _signUpController.emailController.text,
                        _signUpController.passController.text);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(13, Get.height / 35, 13, 25),
                  child: CustomButton(
                    text: 'SIGN UP',
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
      child: Stack(
        children: [
          Positioned(
            left: 20,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: Icon(
                Icons.close,
                color: HexColorUtils.getColorFromHex(CustomColors.hintText),
              ),
            ),
          ),
          Center(
            child: Text(
              'SIGN UP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: HexColorUtils.getColorFromHex(CustomColors.whiteText),
                fontSize: Get.width / 19,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bottomText() {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: Get.height / 15),
        child: GestureDetector(
          onTap: () {
            Get.toNamed('/login');
          },
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Already a Member ? ",
                  style: GoogleFonts.michroma(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
                TextSpan(
                  text: " Login",
                  style: GoogleFonts.michroma(
                    textStyle: TextStyle(
                      color:
                          HexColorUtils.getColorFromHex(CustomColors.primary),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
