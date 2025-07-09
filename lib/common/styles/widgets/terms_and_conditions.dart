import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';

class NtermsandConditions extends StatelessWidget {
  const NtermsandConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Row(
  children: [
    // Checkbox with proper state management
    SizedBox(
      width: 24, // Fixed width for proper alignment
      child: Checkbox(
        value: true, // Should be controlled by a state variable
        onChanged: (value) {
    // Add your state management logic here
        },
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    ),
    const SizedBox(width: Nsize.spaceBtwItems),
    
    // Rich text for terms and conditions
    Flexible( // Ensures text wraps properly
      child: Text.rich(
        TextSpan(
    children: [
      // "I agree to" text
      TextSpan(
        text: '${NText.iAgreeTo} ',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      
      // Privacy Policy (clickable)
      WidgetSpan(
        child: InkWell(
          onTap: () {
            // Add navigation to privacy policy
          },
          child: Text(
            NText.privacypolicy,
            style: Theme.of(context).textTheme.bodyMedium?.apply(
     color: dark ? NColors.white : NColors.primary,
     decoration: TextDecoration.underline,
     decorationColor: dark ? NColors.white : NColors.primary,
            ),
          ),
        ),
      ),
      
      // "and" text
      TextSpan(
        text: ' ${NText.and} ',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      
      // Terms of Service (clickable)
      WidgetSpan(
        child: InkWell(
          onTap: () {
            // Add navigation to terms of service
          },
          child: Text(
            NText.termsOfUse, // Make sure this constant exists
            style: Theme.of(context).textTheme.bodyMedium?.apply(
     color: dark ? NColors.white : NColors.primary,
     decoration: TextDecoration.underline,
     decorationColor: dark ? NColors.white : NColors.primary,
            ),
          ),
        ),
      ),
    ],
        ),
      ),
    ),
  ],
);
  }
}