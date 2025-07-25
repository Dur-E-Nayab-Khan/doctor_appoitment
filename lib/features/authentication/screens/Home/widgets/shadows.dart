import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:flutter/material.dart';

class NShadowStyle{
  static final verticalProductShadow = BoxShadow(
    color: NColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

   static final horizontalProductShadow = BoxShadow(
    color: NColors.darkgrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}