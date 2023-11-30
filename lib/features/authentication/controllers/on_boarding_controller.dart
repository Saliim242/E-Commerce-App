import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_projects/features/authentication/screens/auth/login_page.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  // Update current Index When Page Scrolling

  void updatePageIndicatr(index) {
    currentPageIndex.value = index;
    update();
  }

  //Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
    log(currentPageIndex.value.toString());
    update();
  }

  // Update Current Index & Jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      log('Last Page', name: "Page Controller");
      Get.offAll(() => LoginPage());
    } else {
      int page = currentPageIndex.value + 1;

      pageController.jumpToPage(page);
      update();
    }
  }

  // Update Current Index & Jump to the last page
  void skippage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
    update();
  }
}
