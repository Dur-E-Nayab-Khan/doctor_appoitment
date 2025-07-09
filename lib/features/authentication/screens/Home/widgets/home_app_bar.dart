import 'package:doctor_appoitment/features/authentication/screens/widgets/appBar/appbar.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';

class NHomeAppBar extends StatelessWidget {
  const NHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NAppBar(title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(NText.userHomeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: NColors.white)),
        Text(NText.userHomeAppBarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: NColors.white)),
      ],
    ),
    action: [
        Row(
          children: [
            const Icon(Icons.location_on, color: NColors.white, size: 20),
            const SizedBox(width: 4),
            Text(
              'Islamabad, Pakistan', // Will be replaced by backend data later
              style: Theme.of(context).textTheme.labelLarge!.copyWith(color: NColors.white),
            ),
            const SizedBox(width: 12),
          ],
      )
    ]
    );

  }
}
