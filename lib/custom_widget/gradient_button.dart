import 'package:flutter/material.dart';

import '../constants/colors.dart';

// ignore: must_be_immutable
class GradientButton extends StatelessWidget {
  GradientButton({
    Key? key,
    this.horizontalPadding,
    this.vertiaclPadding,
    this.borderRadius,
    this.width,
    this.height,
    this.splashColor,
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    required this.isDisabled,
  }) : super(key: key);

  double? horizontalPadding;
  double? vertiaclPadding;
  double? borderRadius;
  double? width;
  double? height;
  Color? splashColor;
  Widget? child;
  Function()? onTap;
  Function()? onDoubleTap;
  Function()? onLongPress;
  bool isDisabled;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? 0,
        vertical: vertiaclPadding ?? 0,
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: isDisabled ? null : splashColor ?? Colors.blue,
          onTap: isDisabled ? () {} : onTap ?? () {},
          onDoubleTap: isDisabled ? () {} : onDoubleTap ?? () {},
          onLongPress: isDisabled ? () {} : onLongPress ?? () {},
          child: Container(
            width: width ?? size.width,
            height: height ?? size.height / 15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
              gradient: LinearGradient(
                colors: [
                  isDisabled ? const Color(0xffE8E8E8) : AppColors.appColorPrimary,
                  isDisabled ? const Color(0xffE8E8E8) : AppColors.appColorPrimary.withOpacity(0.63),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: child,
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
