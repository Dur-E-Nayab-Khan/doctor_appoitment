import 'package:doctor_appoitment/features/authentication/screens/Home/widgets/home.dart';
import 'package:doctor_appoitment/features/authentication/screens/settings/settings.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/user_appoitment_screen.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = NHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode?NColors.black :NColors.white,
          surfaceTintColor: (darkMode ? NColors.white : NColors.black).withOpacity(0.1),
          destinations:const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.calendar_today), label: 'Appoitments'),
            NavigationDestination(icon: Icon(Icons.history), label: 'Records'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(
        ()=> controller.screens[
          controller.selectedIndex.value
        ],
      ),

    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens =[const HomeScreen(), const NUserAppoitmentScreen(),Container(color: Colors.purple,), const SettingScreen(),];
}

