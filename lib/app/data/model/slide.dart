import '../../../constants/strings.dart';
import '../../../generated/assets.dart';

class Slide {
  final String imageUrl;
  final String title;
  final String description;

  Slide({required this.imageUrl, required this.title, required this.description});
}

final slideList = [
  Slide(imageUrl: Assets.lottieFilesGameOf, title: walkthrough_first_title, description: walkthrough_first_desc),
  Slide(imageUrl: Assets.lottieFilesWalkSecond, title: walkthrough_second_title, description: walkthrough_second_desc),
  Slide(imageUrl: Assets.lottieFilesWalkThired, title: walkthrough_thired_title, description: walkthrough_thired_desc),
];
