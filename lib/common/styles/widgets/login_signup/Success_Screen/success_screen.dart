import 'package:doctor_appoitment/common/styles/widgets/spacing_style.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.image, required this.title, required this.subtitle, required this.onPressed});

  final String image, title, subtitle;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding
        (padding: NSpacingStyle.paddingWithAppBarHeight*2,
        child: Column(
          children: [
             ///Image
            Image(image: AssetImage(image), width: NHelperFunctions.screenWidth()*0.6,),
            const SizedBox(height: Nsize.spaceBtwSections,),
            ///Title and Subtitle
            Text(title,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
            const SizedBox(height: Nsize.spaceBtwItems,),
            Text(subtitle,style: Theme.of(context).textTheme.labelMedium, textAlign:TextAlign.center,),
            const SizedBox(height: Nsize.spaceBtwSections,),
            ///Buttons
            SizedBox(width: double.infinity,child: ElevatedButton(onPressed: onPressed,child: const Text(NText.ncontinue)),),
            const SizedBox(height: Nsize.spaceBtwItems,),
          ],
        ), 
        ),
      ),
    );
  }
}