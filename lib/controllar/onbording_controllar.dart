import 'package:ecommerce/core/constant/route.dart';
import 'package:ecommerce/data/datasource/static/static.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBordingControllar extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBordingControllarImp extends OnBordingControllar {
  late PageController pageController;

  int currentPage = 0;

  @override
  next() {
    currentPage++;
    if (currentPage > OnBoardingList.length - 1) {
      Get.offAllNamed(AppRpute.login);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
