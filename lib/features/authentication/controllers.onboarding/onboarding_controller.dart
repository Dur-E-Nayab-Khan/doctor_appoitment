import 'package:doctor_appoitment/features/authentication/screens/login/login.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();


// variables

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;  

  // Update current index when pages scroll
  void updatePageIndicator(int index) => currentPageIndex.value = index;

  // Jump to the specific dot-selected page
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index as double);
  }

  // Update current index and jump to the next page
  void nextPage() {
    if(currentPageIndex.value==2){
      Get.offAll(() => const LoginScreen());
    }else{
      int page= currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index and jump to the last page
  void skipPage() {
    currentPageIndex.value=2;
    pageController.jumpToPage(2);
  }
}
