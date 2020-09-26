import 'package:hypertrophy/utilitis/utils.dart';
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
      child: TextFormField(
        autofocus: false,
        style: TextStyle(
          color: HexColorUtils.getColorFromHex(CustomColors.hintText),
          fontSize: 11,
        ),
        textAlign: TextAlign.justify,
        controller: controller,
        cursorColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
        obscureText: secureText,
        validator: validator,
        decoration: InputDecoration(
          border: InputBorder.none,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: suffix,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: icon,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: HexColorUtils.getColorFromHex(CustomColors.hintText),
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
      ),
    );
  }
}
