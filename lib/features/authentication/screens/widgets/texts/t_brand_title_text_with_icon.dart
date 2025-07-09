import 'package:doctor_appoitment/features/authentication/screens/widgets/texts/t_brand_title_text.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/enums.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class NBrandTitleWithVerifiedIcon extends StatelessWidget {
  const NBrandTitleWithVerifiedIcon({
    super.key,
    this.textColor,
    this.iconColor = NColors.primary,
    this.maxLines = 1,
    required this.title,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final Color? textColor, iconColor;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: NBrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: Nsize.xs),
        Icon(Icons.verified, color: iconColor, size: Nsize.iconXs)
      ],
    );
  }
}
