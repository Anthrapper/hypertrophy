import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardController extends GetxController {
  var currentPage = 0.obs;
  int numPages = 3;
  PageController pageController = PageController(initialPage: 0);
}
