import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class NSocialButton extends StatelessWidget {
  const NSocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: NColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){},
          icon: const Image( 
         width: Nsize.iconMd,
         height: Nsize.iconMd,
         image: AssetImage(NImages.google),
          ),),
        ),

        const SizedBox(width: Nsize.spaceBtwItems),
         Container(
          decoration: BoxDecoration(border: Border.all(color: NColors.grey),borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){},
          icon: const Image( 
         width: Nsize.iconMd,
         height: Nsize.iconMd,
         image: AssetImage(NImages.facebook),
          ),),
        ),
        
      ],
    );
  }
}

