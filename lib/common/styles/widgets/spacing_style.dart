import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
class NSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight =EdgeInsets.only(
    top:Nsize.getAppBarHeight,
    left: Nsize.defaultSpace,
    bottom: Nsize.defaultSpace,
    right: Nsize.defaultSpace,
  );
}