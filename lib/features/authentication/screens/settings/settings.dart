import 'package:doctor_appoitment/features/authentication/screens/profile/widgets/profile.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/widgets/list_tile/settings_menu_tile.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/widgets/list_tile/user_profile_tile.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/appBar/appbar.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/text/section_heading.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          ///Header
          NPrimaryHeaderContainer(child: Column(
            children: [
              NAppBar(
                title: Text('Account',style: Theme.of(context).textTheme.headlineMedium!.apply(color:NColors.white),),
              ),
                const SizedBox(height: Nsize.spaceBtwSections,),
                //user profile card
                NUserProfileTile(onPressed:()=>Get.to(()=> const ProfileScreen()),),
                const SizedBox(height: Nsize.spaceBtwSections,),
            ],
          )),
          ///Body
           Padding(
            padding: const EdgeInsets.all(Nsize.defaultSpace),
            child: Column(
              children: [
                ///Account Settings
                const NSectionHeading(title: 'Account Settings',showActionButton: false,),
                const SizedBox(height: Nsize.spaceBtwSections,),
                NSettingsMenuTile(icon: Icons.notifications, title: 'Notifications', subTitle: 'Stay Updated',onTap: (){},),
                NSettingsMenuTile(icon: Icons.security_sharp, title: 'Account Privicy', subTitle: 'Settings and Privacy',onTap: (){},),
                //App Settings
                 const SizedBox(height: Nsize.spaceBtwSections,),
                 const NSectionHeading(title: 'App Settings',showActionButton: false,),
                 const SizedBox(height: Nsize.spaceBtwItems,),
                 NSettingsMenuTile(icon: Icons.security_sharp, title: 'Load Data', subTitle: 'Load data to your cloud Firebase',onTap: (){},),
                 NSettingsMenuTile(icon: Icons.security_sharp, title: 'Load Data', subTitle: 'Load data to your cloud Firebase',
                 trailing: Switch(value: true, onChanged: (value){},),),
                 NSettingsMenuTile(icon: Icons.security_sharp, title: 'Load Data', subTitle: 'Load data to your cloud Firebase',
                 trailing: Switch(value: false, onChanged: (value){},),),
                 NSettingsMenuTile(icon: Icons.security_sharp, title: 'Load Data', subTitle: 'Load data to your cloud Firebase',
                 trailing: Switch(value: false, onChanged: (value){},),
                 
                 ),

                 //Logout Button
                 const SizedBox(height: Nsize.spaceBtwSections,),
                 SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(onPressed: (){},child: const Text('Logout'),),
                  
                 ),
                 const SizedBox(height: Nsize.spaceBtwSections*2,),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
