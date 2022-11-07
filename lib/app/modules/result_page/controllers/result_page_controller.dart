import 'package:get/get.dart';

class ResultPageController extends GetxController {
  late RxInt score;

  @override
  void onInit() {
    // TODO: implement onInit
    score = Get.arguments["Scores"];
    super.onInit();
  }
}
