import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  bool answered = false;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
  }
}
