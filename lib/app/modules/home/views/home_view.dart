import 'package:centrric_quizzapp/app/data/list/question_list.dart';
import 'package:centrric_quizzapp/constants/colors.dart';
import 'package:centrric_quizzapp/custom_widget/gradient_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/dimens.dart';
import '../../../../constants/strings.dart';
import '../../../../custom_widget/custom_theme.dart';
import '../../../../custom_widget/indicator.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Container(
                width: 60,
                height: 25,
                child: Center(child: Obx(() {
                  return Text(
                    "${controller.score.value} / ${controller.questionList.length}",
                    style: subtitle3,
                  );
                })),
                decoration: BoxDecoration(color: Colors.white30, borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              SizedBox(
                width: Get.mediaQuery.size.width * 0.09,
              ),
              Text(
                "Streak",
                style: subtitleLite,
              ),
              SizedBox(
                width: Get.mediaQuery.size.width * 0.09,
              ),
              Container(
                width: 140,
                height: 25,
                child: Center(child: Obx(() {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "${controller.score.value} ",
                        style: subtitle3,
                      ),
                      Text(
                        "|",
                        style: subtitle3,
                      ),
                      Text(
                        "${controller.questionList.length}",
                        style: subtitle3,
                      ),
                    ],
                  );
                })),
                decoration: BoxDecoration(color: Colors.white30, borderRadius: BorderRadius.all(Radius.circular(5))),
              ),
              SizedBox(
                width: Get.mediaQuery.size.width * 0.03,
              ),
            ],
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.pause,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.appBarsColor,
      ),
      backgroundColor: AppColors.pripmaryColor,
      body: PageView.builder(
        itemCount: questions.length,
        controller: controller.pagecontroller,
        physics: NeverScrollableScrollPhysics(),
        onPageChanged: (page) {
          if (page == questions.length - 1) {
            btnText = btnResult;
          } else
            controller.answered = false;
        },
        itemBuilder: (context, index) {
          return Column(
            children: [
              Obx(() {
                return QuizProgressBar(
                  second: controller.secondsRemaining.value,
                );
              }),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Question ${index + 1}/10",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: Get.mediaQuery.size.height * 0.02,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 100.0,
                      child: Text(
                        "${questions[index].question}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      child: Obx(() {
                        return AnimatedContainer(
                          width: double.infinity,
                          height: Get.mediaQuery.size.height * controller.initalValue.value,
                          duration: Duration(milliseconds: 300),
                          child: ListView(
                            children: [
                              for (int i = 0; i < controller.questionList[index].answers!.length; i++)
                                Container(
                                  width: double.infinity,
                                  height: 50.0,
                                  margin: EdgeInsets.only(
                                      bottom: marginExtraLarge, left: paddingMedium, right: paddingMedium),
                                  child: RawMaterialButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    fillColor: controller.btnPressed.value
                                        ? controller.questionList[index].answers!.values.toList()[i]
                                            ? Colors.green
                                            : Colors.red
                                        : AppColors.secondaryColor,
                                    onPressed: !controller.answered
                                        ? () {
                                            controller.btnPressed.value = true;
                                            controller.timer.cancel();

                                            if (controller.questionList[index].answers!.values.toList()[i]) {
                                              controller.score.value++;

                                              const snackBar = SnackBar(
                                                duration: Duration(seconds: 5),
                                                backgroundColor: Colors.green,
                                                content: Text('Answer is Correct'),
                                              );
                                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                            } else {
                                              const snackBar = SnackBar(
                                                backgroundColor: Colors.red,
                                                content: Text('Answer is InCorrect'),
                                              );
                                              ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                            }
                                          }
                                        : null,
                                    child: Text(controller.questionList[index].answers!.keys.toList()[i],
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        )),
                                  ),
                                )
                            ],
                          ),
                        );
                      }),
                    ),
                    SizedBox(
                      height: Get.mediaQuery.size.height * 0.01,
                    ),
                    GradientButton(
                      onTap: () {
                        controller.pagecontroller
                            ?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                        controller.btnPressed.value = false;
                        if (controller.pagecontroller!.page?.toInt() == questions.length - 1) {
                          Get.offNamed(Routes.RESULT_PAGE, arguments: {"Scores": controller.score});
                        } else {
                          // const snackBar = SnackBar(
                          //   backgroundColor: Colors.orange,
                          //   content: Text('Empty'),
                          // );
                          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          controller.pagecontroller!
                              .nextPage(duration: Duration(milliseconds: 250), curve: Curves.easeInExpo);
                          controller.secondsRemaining.value = 150000;
                          controller.startTimer();
                        }
                      },
                      horizontalPadding: 11.0,
                      isDisabled: false,
                      child: Center(
                        child: Text(
                          btnText,
                          style: subtitleLite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
