

import 'package:doctor_appoitment/utils/theme/custom_themes/appbar_theme.dart';
import 'package:doctor_appoitment/utils/theme/custom_themes/button_sheet_theme.dart';
import 'package:doctor_appoitment/utils/theme/custom_themes/check_box_theme.dart';
import 'package:doctor_appoitment/utils/theme/custom_themes/chip_theme.dart';
import 'package:doctor_appoitment/utils/theme/custom_themes/elevetad_button_theme.dart';
import 'package:doctor_appoitment/utils/theme/custom_themes/text_form_field.dart';
import 'package:doctor_appoitment/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class NAppTheme{
  NAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: NTextTheme.lightTextTheme,
    elevatedButtonTheme: NElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: NChipTheme.lightChipTheme,
    checkboxTheme: NCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: NBottomSheetTheme.lightElevatedButtonTheme,
    appBarTheme: NAppBarTheme.lightAppBarTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
    
    
  );
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: NTextTheme.darkTextTheme,
    elevatedButtonTheme: NElevatedButtonTheme.darkElevatedButtonTheme,
    chipTheme: NChipTheme.darkChipTheme,
    checkboxTheme: NCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: NBottomSheetTheme.darkElevatedButtonTheme,
    appBarTheme: NAppBarTheme.darkAppBarTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}