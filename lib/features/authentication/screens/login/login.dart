import 'package:doctor_appoitment/common/styles/widgets/form_divider.dart';
import 'package:doctor_appoitment/common/styles/widgets/social_button.dart';
import 'package:doctor_appoitment/common/styles/widgets/spacing_style.dart';
import 'package:doctor_appoitment/features/authentication/screens/login/widgets/login_form.dart';
import 'package:doctor_appoitment/features/authentication/screens/login/widgets/login_header.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: NSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Header Section
              const NloginHeader(),
              
              // Form Section
              const Nloginform(),
              
              // Divider
               NformDivider(dividerText: NText.orSignInWith.capitalize!),
              const SizedBox(height: Nsize.spaceBtwSections),
              
              // Social Buttons
              const NSocialButton(), 
            ],
          ),
        ),
      ),
    );
  }
}