import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class NCircularIcon extends StatelessWidget {
  const NCircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = Nsize.lg,
    this.onPressed,
    this.color,
    this.backgroundColor,
  });

  final double?width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor!=null? backgroundColor!:NHelperFunctions.isDarkMode(context)?NColors.black.withOpacity(0.9):NColors.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: onPressed,icon: Icon(icon, color: color,size: size,),),
    );
  }
}