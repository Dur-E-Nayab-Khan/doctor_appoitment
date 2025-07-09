import 'package:doctor_appoitment/common/styles/widgets/terms_and_conditions.dart';
import 'package:doctor_appoitment/common/styles/widgets/verify_email.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserSignupForm extends StatelessWidget {
  const UserSignupForm({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children:[
          // First Name
         Expanded(
           child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: NText.firstName,
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
         ),
          const SizedBox(width: Nsize.spaceBtwInputFields),
          //Last Name
        Expanded(
          child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: NText.lastName,
                    prefixIcon: Icon(Icons.person)
                  ),
                ),
        ),
            ]
          ),
          const SizedBox(height: Nsize.spaceBtwInputFields),
          //User Name
        TextFormField(
                expands: false,
                decoration: const InputDecoration(
                  labelText: NText.userName,
                  prefixIcon: Icon(Icons.edit_attributes)
                ),
              ),
               const SizedBox(height: Nsize.spaceBtwInputFields),
          // Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: NText.email,
              prefixIcon: Icon(Icons.email),
            ),
          ),
          const SizedBox(height: Nsize.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: NText.phoneNumber,
              prefixIcon: Icon(Icons.phone),
            ),
          ),
          const SizedBox(height: Nsize.spaceBtwInputFields),


          // User Address
          TextFormField(
            decoration: const InputDecoration(
              labelText: NText.userAddress,
              prefixIcon: Icon(Icons.home),
            ),
          ),
          const SizedBox(height: Nsize.spaceBtwInputFields),


          // Password
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: NText.password,
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.visibility_off),
            ),
          ),

          // Terms and Conditions
          const SizedBox(height: Nsize.spaceBtwItems),
          const NtermsandConditions(),

          // Submit Button
          const SizedBox(height: Nsize.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text(NText.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
