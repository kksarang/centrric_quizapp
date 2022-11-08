import 'package:centrric_quizzapp/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class QuizProgressBar extends StatelessWidget {
  QuizProgressBar({
    Key? key,
    required this.second,
  }) : super(key: key);

  final int second;

  @override
  Widget build(BuildContext context) {
    final width = Get.width;
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(
            microseconds: 300,
          ),
          width: (width / 150000) * second,
          height: 5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: second > 70000
                  ? AppColors.green
                  : second > 30000 && second < 70000
                      ? AppColors.orange
                      : AppColors.red),
        ),
      ],
    );
  }
}
