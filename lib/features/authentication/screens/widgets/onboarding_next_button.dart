import 'package:doctor_appoitment/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../utils/device/device_utility.dart';


class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Positioned(
     right: Nsize.defaultSpace,
     bottom: NDeviceUtils.getBottomNavigationBarHeight(context),
     child: ElevatedButton(
       onPressed: () => OnBoardingController.instance.nextPage(),
       style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: dark? NColors.primary: Colors.black),
       child: const Icon(Icons.arrow_forward),
     ),);
  }
}
