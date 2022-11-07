import 'dart:async';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Timer(Duration(seconds: 4), () {
      Get.toNamed(Routes.WALKTHROUGH);
    });
  }
}
