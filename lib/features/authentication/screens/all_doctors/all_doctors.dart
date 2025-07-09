import 'package:doctor_appoitment/features/authentication/screens/widgets/appBar/appbar.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/sortable/sortable_products.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class AllDoctors extends StatelessWidget {
  const AllDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: NAppBar(
        title: Text('Doctors'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Nsize.defaultSpace),
          child: NSortableDoctors(),
        ),
      ),
    );
  }
}
