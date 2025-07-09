import 'package:doctor_appoitment/features/authentication/screens/navigation.dart';
import 'package:doctor_appoitment/features/authentication/screens/sign_up_selection/signup_selection.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nloginform extends StatelessWidget {
  const Nloginform({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Nsize.spaceBtwSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.arrow_forward),
                labelText: NText.email,
              ),
            ),
            const SizedBox(height: Nsize.spaceBtwInputFields),

            // Password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: NText.password,
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: Nsize.spaceBtwInputFields / 2),

            // Remember Me and Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(NText.rememberme),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(NText.forgetpassword),
                ),
              ],
            ),
            const SizedBox(height: Nsize.spaceBtwInputFields),

            ///Sign in button 
          SizedBox(width:double.infinity, child: ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: const Text(NText.signIn))),
            const SizedBox(height: Nsize.spaceBtwItems),

            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: ()=>Get.to(()=>const SignupSelectionScreen()),
                child: const Text(NText.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
