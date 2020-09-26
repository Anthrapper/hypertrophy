import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double width;
  final Color color;
  CustomText({this.text, this.color, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AutoSizeText(
        text,
        maxLines: 1,
        presetFontSizes: [
          38,
          37,
          36,
          35,
          33,
          32,
          31,
          30,
          29,
          28,
          27,
          26,
          25,
          24,
        ],
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
