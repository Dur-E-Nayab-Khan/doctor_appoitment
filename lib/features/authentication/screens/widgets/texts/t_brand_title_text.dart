import 'package:doctor_appoitment/utils/theme/constants/enums.dart';
import 'package:flutter/material.dart';

class NBrandTitleText extends StatelessWidget {
  const NBrandTitleText({
    super.key,
    this.color,
    this.maxLines = 1,
    required this.title,
    this.textAlign,
    this.brandTextSize =TextSizes.small,
  });

  final Color? color;
  final String title;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: brandTextSize==TextSizes.small?
      Theme.of(context).textTheme.bodyMedium!.apply(color: color)
      :brandTextSize== TextSizes.medium
      ?Theme.of(context).textTheme.bodyLarge!.apply(color: color)
      :brandTextSize== TextSizes.large
      ?Theme.of(context).textTheme.titleLarge!.apply(color: color)
      :Theme.of(context).textTheme.bodyMedium!.apply(color: color),
    );
  }
}
