// widgets/texts/t_brand_title_text_with_icon.dart
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/enums.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class NTextWithIcon extends StatelessWidget {
  const NTextWithIcon({
    super.key,
    required this.title,
    required this.iconData,
    this.textColor,
    this.iconColor = NColors.primary,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final IconData iconData;
  final Color? textColor;
  final Color iconColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(iconData, color: iconColor, size: Nsize.iconXs),
        const SizedBox(height: Nsize.xs),
        Text(
          title,
          style: TextStyle(
            color: textColor,
            fontSize: brandTextSize == TextSizes.small ? 12 : 14,
          ),
          maxLines: maxLines,
          textAlign: textAlign,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}