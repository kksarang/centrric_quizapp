import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class WelcomeAnimationController extends GetxController {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  late Timer _timer;
  var secondsRemaining = 3.obs;

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (secondsRemaining.value > 0) {
          secondsRemaining.value = secondsRemaining.value - 1;
        } else {
          _timer.cancel();
          Get.offAllNamed(Routes.HOME);
        }
      },
    );
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    startTimer();
  }
}
