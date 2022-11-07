import 'package:get/get.dart';

import '../controllers/welcome_animation_controller.dart';

class WelcomeAnimationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeAnimationController>(
      () => WelcomeAnimationController(),
    );
  }
}
