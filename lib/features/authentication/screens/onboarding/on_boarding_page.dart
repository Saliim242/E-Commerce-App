import 'package:flutter/material.dart';
import 'package:flutter_projects/features/authentication/controllers/on_boarding_controller.dart';

import 'package:flutter_projects/utils/constants/image_string.dart';

import 'package:flutter_projects/utils/constants/text_string.dart';
import 'package:get/get.dart';

import 'widgets/widgets.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          // Horizantal Scrolling Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: (index) => controller.updatePageIndicatr(index),
            children: [
              OnBoardingPage(
                title: TTextStrings.onBoardingTitle1,
                subTitle: TTextStrings.onBoardingSubTitle1,
                image: TImages.onBoardingImage1,
              ),
              OnBoardingPage(
                title: TTextStrings.onBoardingTitle2,
                subTitle: TTextStrings.onBoardingSubTitle2,
                image: TImages.onBoardingImage2,
              ),
              OnBoardingPage(
                title: TTextStrings.onBoardingTitle3,
                subTitle: TTextStrings.onBoardingSubTitle3,
                image: TImages.onBoardingImage3,
              ),
            ],
          ),
          // Skip Buttom

          OnBoardingSkipBtn(),

          // Smooth Page Indicator
          OnBoardingSmoothDotIndicator(),

          // Circle Button
          OnBoardingElevetedBtn(),
        ],
      ),
    );
  }
}
