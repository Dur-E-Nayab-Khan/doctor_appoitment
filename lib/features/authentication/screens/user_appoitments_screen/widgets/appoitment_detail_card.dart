// widgets/appointment_details_card.dart
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
class AppointmentDetailsCard extends StatelessWidget {
  const AppointmentDetailsCard({
    super.key,
    required this.date,
    required this.time,
    required this.appointmentType,
    required this.appointmentNumber,
  });

  final String date;
  final String time;
  final String appointmentType;
  final String appointmentNumber;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Appointment Details', 
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: Nsize.spaceBtwItems),
            buildDetailRow(Icons.calendar_today, 'Date', date),
            buildDetailRow(Icons.access_time, 'Time', time),
            buildDetailRow(Icons.assignment, 'Type', appointmentType),
            buildDetailRow(Icons.confirmation_number, 'Appointment No.', appointmentNumber),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Nsize.sm),
      child: Row(
        children: [
          Icon(icon, color: NColors.primary, size:Nsize.iconMd),
          const SizedBox(width: Nsize.spaceBtwItems),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: NColors.dark)),
              Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
        ],
      ),
    );
  }
}