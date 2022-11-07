import 'dart:math';

import 'package:get/get.dart';

extension Percentage on num {
  double get h => ScreenUtil().height(this);
  double get w => ScreenUtil().width(this);
  double get sp => ScreenUtil().setSp(this);
}

class ScreenUtil {
  double get scaleWidth => Get.width / 411;

  double get scaleHeight => Get.height / 820;

  double get scaleText => min(scaleWidth, scaleHeight);

  double height(num height) => height * scaleHeight;

  double width(num width) => width * scaleWidth;

  double setSp(num fontSize) => fontSize * scaleText;

  static TypeOfDevice typeOfDevice() {
    TypeOfDevice _type = TypeOfDevice.none;
    final width = Get.width;
    final height = Get.height;
    final plus = width + height;
    if (plus < 950) {
      _type = TypeOfDevice.verySmall;
    } else if (plus > 950 && plus < 1170) {
      _type = TypeOfDevice.small;
    } else if (plus > 1170 && plus < 1190) {
      _type = TypeOfDevice.medium;
    } else if (plus > 1190 && plus < 1229) {
      _type = TypeOfDevice.large;
    } else if (plus > 1229) {
      _type = TypeOfDevice.xl;
    } else {
      _type = TypeOfDevice.none;
    }
    return _type;
  }
}

enum TypeOfDevice {
  none,
  verySmall,
  small,
  medium,
  large,
  xl,
}
