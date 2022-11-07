import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SlideDots extends StatelessWidget {
  bool isActive;

  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: isActive ? 6 : 8,
      width: isActive ? 25 : 8,
      decoration: BoxDecoration(
        color: isActive ? AppColors.appColorPrimary : AppColors.walk_through_line2,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
