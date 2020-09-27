import 'package:get/get.dart';
import 'package:hypertrophy/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatefulWidget {
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
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
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
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          autofocus: false,
          style: TextStyle(
            color: HexColorUtils.getColorFromHex(CustomColors.hintText),
            fontSize: 11,
          ),
          textAlign: TextAlign.justify,
          controller: widget.controller,
          cursorColor: HexColorUtils.getColorFromHex(CustomColors.hintText),
          obscureText: widget.secureText,
          validator: widget.validator,
          decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: widget.suffix,
            ),
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: HexColorUtils.getColorFromHex(CustomColors.hintText),
              fontSize: Get.width / 45,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.1,
            ),
          ),
        ),
      ),
    );
  }
}
