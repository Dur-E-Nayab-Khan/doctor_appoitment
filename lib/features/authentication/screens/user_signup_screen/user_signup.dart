import 'package:doctor_appoitment/common/styles/widgets/form_divider.dart';
import 'package:doctor_appoitment/common/styles/widgets/social_button.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_signup_screen/widgets/user_signup_form.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class UserSignupScreen extends StatelessWidget {
  const UserSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          //title
          Text(NText.createAccountTitle,style: Theme.of(context).textTheme.headlineMedium,),
          const SizedBox(height: Nsize.spaceBtwSections),
          //form
          const UserSignupForm(),
          const SizedBox(height: Nsize.spaceBtwSections),
          // divider
          NformDivider(dividerText: NText.orSignUpWith.capitalize!),

          const SizedBox(height: Nsize.spaceBtwSections),
          //social Buttons
          const NSocialButton()

        ]),
        ),
      ),
    );
  }
}
