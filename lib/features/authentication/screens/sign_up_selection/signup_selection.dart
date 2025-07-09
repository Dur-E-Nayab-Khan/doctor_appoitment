import 'package:doctor_appoitment/features/authentication/screens/doctor_signup_screen/doctor_signup_screen.dart';
import 'package:doctor_appoitment/features/authentication/screens/hospital_signup_screen/hospital_signup_screen.dart';
import 'package:doctor_appoitment/features/authentication/screens/sign_up_selection/widgets/signup_option_card.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_signup_screen/user_signup.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:get/get.dart';

class SignupSelectionScreen extends StatelessWidget {
  const SignupSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text(NText.createAccount),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          children: [
            const SizedBox(height: Nsize.spaceBtwItems),
            Text(
              NText.signUpSelectionScreenTitle,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: Nsize.spaceBtwSections),
            Expanded(
              child: ListView(
                children: [
                  SignupOptionCard(
                    icon: Icons.local_hospital,
                    title: NText.hospitalSelectionScreenTitle,
                    description: NText.hospitalSelectionScreenDescription,
                    onTap: ()=>Get.to(()=>const HospitalSignUpScreen()),
                  ),
                  const SizedBox(height: Nsize.spaceBtwItems),
                  SignupOptionCard(
                    icon: Icons.medical_services,
                    title: NText.doctorSelectionScreenTitle,
                    description: NText.doctorSelectionScreenDescription,
                    onTap:()=>Get.to(()=>const DoctorSignupScreen()),
                  ),
                  const SizedBox(height: Nsize.spaceBtwItems),
                  SignupOptionCard(
                    icon: Icons.person,
                    title: NText.userSelectionScreenTitle,
                    description: NText.userSelectionScreenDescription,
                    onTap: ()=>Get.to(()=>const UserSignupScreen()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
