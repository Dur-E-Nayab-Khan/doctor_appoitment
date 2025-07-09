import 'package:doctor_appoitment/common/styles/widgets/current_location_field.dart';
import 'package:doctor_appoitment/common/styles/widgets/terms_and_conditions.dart';
import 'package:doctor_appoitment/common/styles/widgets/verify_email.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:doctor_appoitment/utils/theme/constants/test_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HospitalSignupForm extends StatefulWidget {
  const HospitalSignupForm({super.key});

  @override
  State<HospitalSignupForm> createState() => _HospitalSignupFormState();
}

class _HospitalSignupFormState extends State<HospitalSignupForm> {
  String selectedType = 'Private'; // default dropdown value
  String selectedLocation = 'No location selected'; // mock location

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Hospital Name
          TextFormField(
            decoration: const InputDecoration(
              labelText: NText.hospitalName,
              prefixIcon: Icon(Icons.edit_attributes),
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

          // Hospital Type Dropdown
          DropdownButtonFormField<String>(
            value: selectedType,
            decoration: const InputDecoration(
              labelText: NText.hospitalType,
              prefixIcon: Icon(Icons.local_hospital),
            ),
            items: const [
              DropdownMenuItem(value: 'Private', child: Text('Private')),
              DropdownMenuItem(value: 'Government', child: Text('Government')),
            ],
            onChanged: (value) {
              setState(() => selectedType = value!);
            },
          ),
          const SizedBox(height: Nsize.spaceBtwInputFields),

          // Hospital Address
          TextFormField(
            decoration: const InputDecoration(
              labelText: NText.hospitalAddress,
              prefixIcon: Icon(Icons.home),
            ),
          ),
          const SizedBox(height: Nsize.spaceBtwInputFields),

          // Live Location Field
          CurrentLocationField(
            onLocationSelected: (location) {
              // Optionally handle location if needed
              // ignore: avoid_print
              print('Selected Location: $location');
            },
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
