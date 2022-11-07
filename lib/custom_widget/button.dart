import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatelessWidget {
  Button({
    Key? key,
    this.paddingBottom,
    this.paddingLeft,
    this.paddingTop,
    this.paddingRight,
    this.borderRadius,
    this.width,
    this.height,
    this.splashColor,
    this.color,
    this.child,
    this.onTap,
    this.onDoubleTap,
    this.onLongPress,
    required this.isDisabled,
  }) : super(key: key);

  double? paddingTop;
  double? paddingBottom;
  double? paddingLeft;
  double? paddingRight;
  double? borderRadius;
  double? width;
  double? height;
  Color? splashColor;
  Color? color;
  Widget? child;
  Function()? onTap;
  Function()? onDoubleTap;
  Function()? onLongPress;
  bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: paddingTop ?? 0,
        bottom: paddingBottom ?? 0,
        left: paddingLeft ?? 0,
        right: paddingRight ?? 0,
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
            width: width ?? double.infinity,
            height: height ?? 55,
            decoration: BoxDecoration(
              color: color ?? Colors.blue,
              borderRadius: BorderRadius.circular(borderRadius ?? 0),
            ),
            child: child,
          ),
        ),
        color: Colors.transparent,
      ),
    );
  }
}
