import 'package:centrric_quizzapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app/modules/welcome_animation/controllers/welcome_animation_controller.dart';
import 'custom_theme.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({
    Key? key,
    required this.second,
  }) : super(key: key);

  final int second;
  final controller = Get.find<WelcomeAnimationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.black,
      child: Center(
        child: Text(second != 0 ? '$second' : "GO!", style: body3),
      ),
    );
  }
}
