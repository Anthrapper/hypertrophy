import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoalButtons extends StatelessWidget {
  final String text;
  final Color color;
  GoalButtons({this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: Get.width / 28,
          letterSpacing: 1.4,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
