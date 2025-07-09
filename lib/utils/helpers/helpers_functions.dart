import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NHelperFunctions {
  static Color? getcolor(String value) {
    if (value == 'Green') {
      return Colors.green;
    }
     else if (value == 'Red') {
      return Colors.red;
    }
    else if (value == 'Blue') {
      return Colors.blue;
    }
    return null; 
  }


  static bool isDarkMode(BuildContext context){
  return Theme.of(context).brightness== Brightness.dark;
}

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }
}
