import 'package:doctor_appoitment/utils/device/device_utility.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:flutter/material.dart';
class NTabBar extends StatelessWidget implements PreferredSizeWidget {
  const NTabBar({super.key, required this.tabs});
  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Material(
      color: dark? NColors.black:NColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: NColors.primary,
        labelColor: dark?NColors.white:NColors.primary,
        unselectedLabelColor: NColors.darkgrey,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(NDeviceUtils.getAppBarHeight());
}