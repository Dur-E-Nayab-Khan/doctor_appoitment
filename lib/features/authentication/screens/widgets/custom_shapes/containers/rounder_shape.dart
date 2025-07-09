import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class NRoundedContainer extends StatelessWidget {
  const NRoundedContainer({
    super.key,
    this.child,
    this.width ,
    this.height ,
    this.radius = Nsize.cardRadiusMd,
    this.padding,
    this.showBorder = false,
    this.backgroundColor = NColors.white,
    this.margin,
    this.borderColor = NColors.borderPrimary,
  });
  final double? width;
  final double?height;
  final double radius;
  final Widget? child;
  final Color backgroundColor;
  final bool showBorder;
  final Color borderColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder?Border.all(color: borderColor):null,
      ),
      child: child,
    );
  }
}
