import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
class AppointmentActions extends StatelessWidget {
  const AppointmentActions({
    super.key,
    required this.onReschedule,
    required this.onCancel,
  });

  final VoidCallback onReschedule;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Nsize.defaultSpace),
      child: Row(
        children: [
          Expanded(
            child: OutlinedButton(
              onPressed: onReschedule,
              child: const Text('Reschedule'),
            ),
          ),
          const SizedBox(width: Nsize.spaceBtwItems),
          Expanded(
            child: ElevatedButton(
              onPressed: onCancel,
              child: const Text('Cancel Appointment'),
            ),
          ),
        ],
      ),
    );
  }
}