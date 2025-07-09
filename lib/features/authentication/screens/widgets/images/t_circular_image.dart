import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class NCircularImage extends StatelessWidget {
  const NCircularImage( {
    super.key,
    this.width = 56,
    this.height = 56,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.fit = BoxFit.cover,
    this.isNetworkingImage = false,
    this.padding = Nsize.sm,


  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkingImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width,height, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding:  EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor?? (NHelperFunctions.isDarkMode(context)?NColors.black:NColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
      child: Image( 
      fit:fit,
      image: isNetworkingImage? NetworkImage(image):AssetImage(image) as ImageProvider,
      color: overlayColor,
      ),
      ) ,
      );
  }
}
