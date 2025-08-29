import 'package:azyro_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  
  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update Current Index whwn Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  // Jump to the specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update current index & jump to next page
  void nextPage(){
    if(currentPageIndex.value==2){
      Get.to(LoginScreen());
    }else{
      int page = currentPageIndex.value +1;
      pageController.jumpToPage(page);
    }
  }
  
  // Update current index & jump to the last page
  void skipPage(){
    Get.to(LoginScreen());
    // currentPageIndex.value = 2;
    // pageController.jumpToPage(2);
  }

}

