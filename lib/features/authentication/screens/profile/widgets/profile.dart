import 'package:doctor_appoitment/features/authentication/screens/profile/widgets/profile_menu.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/appBar/appbar.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/images/t_circular_image.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/text/section_heading.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(showBackArrow: true, title: Text('Profile'),),
      //body
      body: SingleChildScrollView(
      child: Padding(padding: const EdgeInsets.all(Nsize.defaultSpace),
      child: Column(
        children:[
          //Profile Picture
          SizedBox(
            width: double.infinity,
            child: Column(children: [
              const NCircularImage(image: NImages.user,width: 80,height: 80,),
              TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
            ]),

          ),

          //Details
          const SizedBox(height: Nsize.spaceBtwItems/2,),
          const Divider(),
          const SizedBox(height: Nsize.spaceBtwItems,),
          const NSectionHeading(title: 'Profile Information',showActionButton: false,),
          const SizedBox(height: Nsize.spaceBtwItems,),

          NProfileMenu(title: 'Name',value: 'Coding with Nayab',onPressed: (){},),
          NProfileMenu(title: 'User Name',value: 'Coding with Dur E',onPressed: (){},),
          const SizedBox(height: Nsize.spaceBtwItems,),

          //Heading Personal Info
          const NSectionHeading(title: 'Personal Information',showActionButton: false,),
          const SizedBox(height: Nsize.spaceBtwItems,),


          NProfileMenu(title: 'User Id',value: '45689',icon: Icons.copy,onPressed: (){},),
          NProfileMenu(title: 'E-Mail',value: 'nayab@459',onPressed: (){},),
          NProfileMenu(title: 'Phone Number',value: '0311111111',onPressed: (){},),
          NProfileMenu(title: 'Gender',value: 'Female',onPressed: (){},),
          NProfileMenu(title: 'Date of Birth',value: '11 Aug, 1999',onPressed: (){},),
          const Divider(),
          const SizedBox(height: Nsize.spaceBtwItems,),

          Center(
            child: TextButton(
              onPressed: (){},
              child: const Text('Close Account',style: TextStyle(color: Colors.red),),
            ),
          )


        ],
      ),
      ),

      ),
    );
  }
}
