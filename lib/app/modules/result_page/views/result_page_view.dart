import 'package:centrric_quizzapp/custom_widget/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/strings.dart';
import '../../../../custom_widget/custom_theme.dart';
import '../../../routes/app_pages.dart';
import '../controllers/result_page_controller.dart';

class ResultPageView extends GetView<ResultPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainPage_bg_clr,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              congrts,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 45.0,
          ),
          Text(
            scoreIs,
            style: TextStyle(color: Colors.white, fontSize: 34.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Obx(() {
            return Text(
              '${controller.score.value}',
              style: TextStyle(
                color: AppColors.orange,
                fontSize: 85.0,
                fontWeight: FontWeight.bold,
              ),
            );
          }),
          SizedBox(
            height: 100.0,
          ),
          GradientButton(
            horizontalPadding: 40.0,
            onTap: () {
              Get.offNamed(Routes.HOME);
            },
            isDisabled: false,
            child: Center(
              child: Text(
                repeatQuizz,
                style: headline9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
