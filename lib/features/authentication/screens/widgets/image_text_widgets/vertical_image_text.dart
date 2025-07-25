import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class NVerticalImageText extends StatelessWidget {
  const NVerticalImageText({
    super.key, 
    required this.image, 
    required this.title, 
    this.textColor = NColors.white, 
    this.backgroundColor, this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right:Nsize.spaceBtwItems),
        child: Column(children: [
          Container(
            width: 56,
            height: 56,
            padding: const EdgeInsets.all(Nsize.sm),
            decoration: BoxDecoration(
              color: backgroundColor??(dark?NColors.black:NColors.white),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Image(image: AssetImage(image),fit: BoxFit.cover),
            ),
          ),
          //Text
          const SizedBox(height: Nsize.spaceBtwItems/2,),
          SizedBox( width: 55,
            child: Text(title,style: Theme.of(context).textTheme.labelMedium!.apply(color:textColor),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            )
            
            ),
      
        ],),
      ),
    );
  }
}
