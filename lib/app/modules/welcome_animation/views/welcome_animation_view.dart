import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../custom_widget/welcome_animation.dart';
import '../controllers/welcome_animation_controller.dart';

class WelcomeAnimationView extends GetView<WelcomeAnimationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3F2650),
      body: Center(
        child: SizedBox(
          height: 100.0,
          child: Obx(() {
            return FlipCard(
              key: controller.cardKey,
              direction: FlipDirection.VERTICAL,
              flipOnTouch: false,
              front: WelcomePage(second: controller.secondsRemaining.value),
              back: WelcomePage(second: controller.secondsRemaining.value),
            );
          }),
        ),
      ),
    );
  }
}
