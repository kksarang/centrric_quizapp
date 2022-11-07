import 'package:centrric_quizzapp/app/data/list/question_list.dart';
import 'package:centrric_quizzapp/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/dimens.dart';
import '../../../../constants/strings.dart';
import '../../../data/model/question_model.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pripmaryColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
          itemCount: questions.length,
          onPageChanged: (page) {
            if (page == questions.length - 1) {
              btnText = btnResult;
            } else
              controller.answered = false;
          },
          itemBuilder: (context, index) {
            return Column(
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
                      fontSize: 28.0,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: Get.mediaQuery.size.height * 0.05,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 200.0,
                  child: Text(
                    "${questions[index].question}",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                for (int i = 0; i < questions[index].answers!.length; i++)
                  Container(
                    width: double.infinity,
                    height: 50.0,
                    margin: EdgeInsets.only(bottom: marginExtraLarge, left: paddingMedium, right: paddingMedium),
                    child: RawMaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      fillColor: controller.btnPressed
                          ? questions[index].answers!.values.toList()[i]
                              ? Colors.green
                              : Colors.red
                          : AppColors.secondaryColor,
                      onPressed: !controller.answered
                          ? () {
                              if (questions[index].answers!.values.toList()[i]) {
                                controller.score++;
                              } else {}
                            }
                          : null,
                      child: Text(questions[index].answers!.keys.toList()[i],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          )),
                    ),
                  ),
                SizedBox(
                  height: Get.mediaQuery.size.height * 0.05,
                ),
                RawMaterialButton(
                  onPressed: () {
                    // if (controller._controller!.page?.toInt() == questions.length - 1) {
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //           builder: (context) => ResultScreen(score)));
                    // } else {
                    //   _controller!.nextPage(
                    //       duration: Duration(milliseconds: 250),
                    //       curve: Curves.easeInExpo);
                    //
                    //   setState(() {
                    //     btnPressed = false;
                    //   });
                    // }
                  },
                  shape: StadiumBorder(),
                  fillColor: Colors.blue,
                  padding: EdgeInsets.all(18.0),
                  elevation: 0.0,
                  child: Text(
                    btnText,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Widget questionWidget(QuestionModel questionModel, void Function() function, bool presed) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200.0,
          child: Text(
            "${questionModel.question}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22.0,
            ),
          ),
        ),
        for (int i = 0; i < questionModel.answers!.length; i++)
          Container(
            width: double.infinity,
            height: 50.0,
            margin: EdgeInsets.only(bottom: 20.0, left: 12.0, right: 12.0),
            child: RawMaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              fillColor: AppColors.secondaryColor,
              onPressed: function,
              child: Text(questionModel.answers!.keys.toList()[i]),
            ),
          )
      ],
    );
  }
}
