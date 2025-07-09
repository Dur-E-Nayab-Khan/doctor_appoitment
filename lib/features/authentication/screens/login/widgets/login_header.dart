import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';

class NloginHeader extends StatelessWidget {
  const NloginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark =  NHelperFunctions.isDarkMode(context);
    return Column(children: [
      //logo title and sub title
      Column(
        children: [
          Image(
            height: 150,
            image: AssetImage(dark? NImages.lightAppLogo: NImages.darkAppLogo),
          ),
          Text(NText.loginTitle, style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
          const SizedBox(height: Nsize.sm),
          Text(NText.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    ]
    );
  }
}