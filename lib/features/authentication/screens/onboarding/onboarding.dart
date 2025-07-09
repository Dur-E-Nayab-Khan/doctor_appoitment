import 'package:doctor_appoitment/features/authentication/screens/widgets/onboarding_navigation.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/onboarding_next_button.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/onboarding_page.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/onboarding_skip.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers.onboarding/onboarding_controller.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: NImages.onBoardingImage1,
                title: NText.onboardingTitle1,
                subtitle: NText.onboardingSubTitle1,
              ),
              OnboardingPage(
                image: NImages.onBoardingImage2,
                title: NText.onboardingTitle2,
                subtitle: NText.onboardingSubTitle2,
              ),
              OnboardingPage(
                image: NImages.onBoardingImage3,
                title: NText.onboardingTitle3,
                subtitle: NText.onboardingSubTitle3,
              ),
            ],
          ),

          /// Skip button or other widget
          const OnboardingSkip(),
          const OnboardingNavigation(),
           
          
           const OnBoardingNextButton()

        ],
      ),
    );
  }
}


