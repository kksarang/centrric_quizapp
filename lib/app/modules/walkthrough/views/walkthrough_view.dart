import 'package:centrric_quizzapp/custom_widget/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../custom_widget/custom_theme.dart';
import '../../../../custom_widget/slide_dots.dart';
import '../../../data/model/slide.dart';
import '../../../routes/app_pages.dart';
import '../controllers/walkthrough_controller.dart';
import 'slideitem.dart';

class WalkthroughView extends GetView<WalkthroughController> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: <Widget>[
                      PageView.builder(
                        onPageChanged: (value) => controller.currentPage.value = value,
                        scrollDirection: Axis.horizontal,
                        controller: _pageController,
                        itemCount: slideList.length,
                        itemBuilder: (ctx, i) => SlideItems(i),
                      ),
                      Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: Get.mediaQuery.size.height * 0.10,
                            child: Padding(
                              padding: EdgeInsets.only(top: 75.h),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  for (int i = 0; i < slideList.length; i++)
                                    if (i == controller.currentPage.value) SlideDots(true) else SlideDots(false)
                                ],
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: Get.mediaQuery.size.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Get.offNamed(Routes.WELCOME_ANIMATION);
                      },
                      child: Container(
                        width: 380,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [AppColors.appColorPrimary, AppColors.appColorPrimary.withOpacity(.5)]),
                        ),
                        child: Center(
                          child: Text('START QUIZ', style: subtitleLite),
                        ),
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: Get.mediaQuery.size.height * 0.05,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
