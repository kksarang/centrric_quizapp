import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/dimens.dart';
import '../../../../custom_widget/custom_theme.dart';
import '../model/slide.dart';

class SlideItems extends StatelessWidget {
  final int index;

  SlideItems(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: paddingLarge, right: paddingLarge),
          child: Container(
            height: Get.mediaQuery.size.height * .4,
            child: Lottie.asset(slideList[index].imageUrl, fit: BoxFit.fill, height: Get.mediaQuery.size.height * .4),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: Get.mediaQuery.size.height * 0.06,
        ),
        Padding(
          padding: const EdgeInsets.only(left: paddingLarge, right: paddingLarge),
          child: Text(
            slideList[index].title,
            style: headline9.copyWith(color: AppColors.appColorPrimary),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: Get.mediaQuery.size.height * 0.03,
        ),
        Padding(
          padding: const EdgeInsets.only(left: paddingLarge, right: paddingLarge),
          child: Text(
            slideList[index].description,
            style: subtitle3.copyWith(
              color: AppColors.walkthrough_description_color,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
