import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/user_cancelled_tab.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/user_past_tab.dart';
import 'package:doctor_appoitment/features/authentication/screens/user_appoitments_screen/user_upcoming_tab.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/dynamic_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/appBar/appbar.dart';

class NUserAppoitmentScreen extends StatelessWidget {
  const NUserAppoitmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tabTitles = ['Upcoming', 'Past', 'Cancelled'];
    const tabContents = [
      UserUpcomingAppointmentsTab(),
      UserPastAppointmentsTab(),
      UserCancelledAppointmentsTab(),
    ];

    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const NAppBar(
                title: Text('My Appointments'),
                showBackArrow: false,
              ),
              Expanded( // Add Expanded here
                child: DynamicTabView(
                  tabTitles: tabTitles,
                  tabContents: tabContents,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}