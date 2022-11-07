import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/strings.dart';
import '../../../../custom_widget/custom_theme.dart';
import '../../../../generated/assets.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
          child: Container(
              width: 500,
              height: 400,
              child: Column(
                children: [
                  Lottie.asset(Assets.lottieFilesSpalshLoader, fit: BoxFit.fill),
                  Spacer(),
                  Text(
                    appName,
                    textAlign: TextAlign.center,
                    style: subtitle2,
                  ),
                ],
              ))),
    );
  }
}
