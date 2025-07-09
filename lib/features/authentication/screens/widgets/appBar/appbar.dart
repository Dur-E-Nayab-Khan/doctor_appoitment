import 'package:doctor_appoitment/utils/device/device_utility.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NAppBar({super.key,
  this.title,
  this.action,
  this.leadingIcon,
  this.leadingOnPressed,
  this.showBackArrow=false,
  });
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return Padding(padding: const EdgeInsets.symmetric(horizontal: Nsize.md),
    child: AppBar(
      automaticallyImplyLeading: false,
      leading: showBackArrow
      ?IconButton(onPressed: ()=>Get.back(), icon:Icon(Icons.arrow_left, color: dark?NColors.white:NColors.dark)):
      leadingIcon !=null? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)): null,
      title: title,
      actions: action,
    ),);
  }
  
  @override
  Size get preferredSize => Size.fromHeight(NDeviceUtils.getAppBarHeight());
}
