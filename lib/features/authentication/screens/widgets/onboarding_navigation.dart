import 'package:doctor_appoitment/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../utils/device/device_utility.dart';
class OnboardingNavigation extends StatelessWidget {
  const OnboardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = NHelperFunctions.isDarkMode(context);
    return Positioned(
  bottom: NDeviceUtils.getBottomNavigationBarHeight(context) + 25,
  left: Nsize.defaultSpace, //
  child: SmoothPageIndicator(
    controller: controller.pageController, 
    onDotClicked: controller.dotNavigationClick,
    count: 3,
    effect: ExpandingDotsEffect(activeDotColor: dark? NColors.light: NColors.dark,dotHeight:6),
  ),
);
  }
}