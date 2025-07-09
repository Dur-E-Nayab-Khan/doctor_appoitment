import 'package:flutter/material.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';

class NDoctorSpecialization extends StatelessWidget {
  final String specialization;
  final bool isDark;

  const NDoctorSpecialization({
    super.key,
    required this.specialization,
    this.isDark = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      specialization,
      style: Theme.of(context).textTheme.labelMedium?.apply(
            color: isDark ? NColors.light : NColors.dark,
          ),
      overflow: TextOverflow.ellipsis,
      maxLines: 1,
    );
  }
}