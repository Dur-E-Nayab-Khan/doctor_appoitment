import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class NRoundedImage extends StatelessWidget {
  const NRoundedImage({
    super.key,
    this.padding,
    this.border,
    this.width ,
    this.height, 
    required this.imageUrl, 
    this.applyImageRadius=true, 
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.isNeteorkingImage = false,
    this.onPressed,
    this.borderRadius =Nsize.md,
  });

  final double?width,height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color?backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNeteorkingImage;
  final VoidCallback?onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(borderRadius)),
        child: ClipRRect(
        borderRadius:applyImageRadius?BorderRadius.circular(borderRadius):BorderRadius.zero,
        child: Image(fit:fit,image: isNeteorkingImage? NetworkImage(imageUrl):AssetImage(imageUrl)as ImageProvider),
      ),
      ),
    );
  }
}
