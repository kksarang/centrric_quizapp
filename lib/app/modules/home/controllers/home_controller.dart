import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/list/question_list.dart';
import '../../../data/model/question_model.dart';

class HomeController extends GetxController with GetTickerProviderStateMixin {
  int question_pos = 0;
  final score = 0.obs;
  final btnPressed = false.obs;
  bool answered = false;
  PageController? pageController;
  int sec = 15;
  var index = 0;

  late AnimationController animationController;

  late Timer timer;
  var secondsRemaining = 150000.obs;
  var initalSecondRemaining = 3.obs;

  final initalValue = 0.0.obs;

  final questionList = <QuestionModel>[...questions].obs;

  void startTimer() {
    timer = Timer.periodic(
      const Duration(microseconds: 100),
      (timer) {
        if (secondsRemaining.value > 0) {
          secondsRemaining.value = secondsRemaining.value - 1;
        } else {
          timer.cancel();
        }
      },
    );
  }

  void initalTimer() {
    timer = Timer.periodic(
      const Duration(milliseconds: 300),
      (timer) {
        if (initalSecondRemaining.value > 0) {
          initalSecondRemaining.value = initalSecondRemaining.value - 1;
        } else {
          timer.cancel();
          startTimer();
          initalValue.value = 0.34;
        }
      },
    );
  }

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(vsync: this);
    initalTimer();
    pageController = PageController()..addListener(() {});
  }
}
