import 'package:flutter/material.dart';

class Space {
  static w10() {
    return const SizedBox(width: 10);
  }

  static w20() {
    return const SizedBox(width: 20);
  }

  static w30() {
    return const SizedBox(width: 30);
  }

  static w40() {
    return const SizedBox(width: 40);
  }

  static w50() {
    return const SizedBox(width: 50);
  }

  static wCustom(double width) {
    return SizedBox(width: width);
  }

  static h10() {
    return const SizedBox(height: 10);
  }

  static h20() {
    return const SizedBox(height: 20);
  }

  static h30() {
    return const SizedBox(height: 30);
  }

  static h40() {
    return const SizedBox(height: 40);
  }

  static h50() {
    return const SizedBox(height: 50);
  }

  static hCustom(double height) {
    return SizedBox(height: height);
  }
}
