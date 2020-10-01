import 'package:hypertrophy/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool secureText;
  final FaIcon icon;
  final Function validator;
  final FaIcon suffix;
  CustomTextField(
      {this.hintText,
      this.controller,
      this.secureText,
      this.validator,
      this.icon,
      this.suffix});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: HexColorUtils.getColorFromHex(CustomColors.background),
        ),
        color: HexColorUtils.getColorFromHex(CustomColors.background),
        borderRadius: const BorderRadius.all(
          const Radius.circular(13.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: TextFormField(
          autofocus: false,
          style: TextStyle(
            letterSpacing: 1.4,
            color: HexColorUtils.getColorFromHex(CustomColors.hintText),
            fontSize: 13,
          ),
          textAlign: TextAlign.justify,
          controller: this.controller,
          cursorColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
          obscureText: this.secureText,
          validator: this.validator,
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: this.suffix,
            ),
            hintText: this.hintText,
            hintStyle: TextStyle(
              color: HexColorUtils.getColorFromHex(CustomColors.hintText),
              fontSize: 9,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
