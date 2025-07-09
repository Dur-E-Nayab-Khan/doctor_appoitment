// features/authentication/screens/user_upcoming_detail_screen.dart
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/widgets/actions_buttons.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/widgets/appoitment_detail_card.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/widgets/doctor_profile_section.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/widgets/user_document_section.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/appBar/appbar.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class UserUpcomingDetailScreen extends StatelessWidget {
  const UserUpcomingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(
        title: Text('Appointment Details'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          children:  [
            const NDoctorProfileSection(
              doctorName: 'Dr. Dur E Nayab',
              specialty: 'Cardiologist',
              ratings: 4.5,
              image: AssetImage(NImages.doctor1),
              experience: '12 Years Experience', hospitalName: 'RMI',
            ),
             const SizedBox(height: Nsize.spaceBtwSections),
            const AppointmentDetailsCard(
              date: 'July 15, 2023',
              time: '10:00 AM - 10:30 AM',
              appointmentType: 'Follow-up',
              appointmentNumber: 'APT-2023-4567',
            ),
             const SizedBox(height: Nsize.spaceBtwSections),
            const DocumentsSection(
              documents: ['Medical Report.pdf', 'Lab Results.pdf'],
            ),
             const SizedBox(height: Nsize.spaceBtwSections),
            AppointmentActions(
              onReschedule: (){},
              onCancel: (){},),
          ],
        ),
      ),
    );
  }
}