import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/appoitment_card.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/user_upcoming_detail_screen.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserUpcomingAppointmentsTab extends StatelessWidget {
  const UserUpcomingAppointmentsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: 4, // Will show 4 identical cards
      itemBuilder: (context, index) {
        return AppointmentCard( // Removed const
          doctorName: "Dr. Dur E Nayab",
          specialty: "Dermatologist",
          dateTime: "July 10, 2023 • 3:30 PM",
          image: const AssetImage(NImages.doctor1), // Changed to AssetImage
          // Optional parameters you can add:
           onCardTap: () => Get.to(()=>const UserUpcomingDetailScreen()),
           onIconTap: () => Get.to(()=>const UserUpcomingDetailScreen()),
          
        );
      },
    );
  }
}