import 'package:doctor_appoitment/utils/device/device_utility.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class NSearchContainer extends StatelessWidget {
  const NSearchContainer({
    super.key, required this.text, this.icon = Icons.search, this.showBackground = true, this.showBorder= true, this.onTap,
     this.padding = const EdgeInsets.symmetric(horizontal:Nsize.defaultSpace),
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding:padding,
        child: Container(
          width: NDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(Nsize.md),
          decoration: BoxDecoration(
            color:showBackground? dark?NColors.dark: NColors.light:Colors.transparent,
            borderRadius: BorderRadius.circular(Nsize.cardRadius),
            border: showBorder? Border.all(color: NColors.grey):null, 
          ),
          child: Row(children:[
            const Icon(Icons.search, color: NColors.darkgrey,),
            const SizedBox(width: Nsize.spaceBtwItems,),
            Text(text, style: Theme.of(context).textTheme.bodySmall,),
          ]),
        ),
      ),
    );
  }
}
