import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NformDivider extends StatelessWidget {
  const NformDivider({
    super.key,
    required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Row(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Flexible(child: Divider(color: dark? NColors.darkgrey:NColors.grey, thickness: 0.5,indent: 60, endIndent:5)),
      Text(NText.orSignInWith.capitalize!,style:Theme.of(context).textTheme.labelMedium ),
      Flexible(child: Divider(color: dark? NColors.darkgrey:NColors.grey, thickness: 0.5,indent: 5, endIndent:60)),
    ],
    );
  }
}