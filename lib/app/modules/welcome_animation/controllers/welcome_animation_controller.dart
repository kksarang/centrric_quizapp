import 'dart:async';

import 'package:centrric_quizzapp/app/routes/app_pages.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeAnimationController extends GetxController {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  int sec = 3;
  void startTimer() {
    Timer.periodic(
      Duration(seconds: 2),
      (Timer timer) {
        if (sec == 0) {
          timer.cancel();
          Future.delayed(
              Duration(
                seconds: 0.1.toInt(),
              ), () {
            Get.offNamed(Routes.HOME);
          });
          sec = 3;
        } else {
          sec--;
          cardKey.currentState?.toggleCard();
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
  }
}
