import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/result_page/bindings/result_page_binding.dart';
import '../modules/result_page/views/result_page_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/walkthrough/bindings/walkthrough_binding.dart';
import '../modules/walkthrough/views/walkthrough_view.dart';
import '../modules/welcome_animation/bindings/welcome_animation_binding.dart';
import '../modules/welcome_animation/views/welcome_animation_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.WALKTHROUGH,
      page: () => WalkthroughView(),
      binding: WalkthroughBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME_ANIMATION,
      page: () => WelcomeAnimationView(),
      binding: WelcomeAnimationBinding(),
    ),
    GetPage(
      name: _Paths.RESULT_PAGE,
      page: () => ResultPageView(),
      binding: ResultPageBinding(),
    ),
  ];
}
