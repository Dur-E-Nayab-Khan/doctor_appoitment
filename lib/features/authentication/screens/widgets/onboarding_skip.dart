import 'package:doctor_appoitment/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../utils/device/device_utility.dart';
class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(top:NDeviceUtils.getAppBarHeight(),right: Nsize.defaultSpace, child: TextButton(onPressed: ()=>OnBoardingController.instance.skipPage(),child: const Text('skip'),));
  }
}