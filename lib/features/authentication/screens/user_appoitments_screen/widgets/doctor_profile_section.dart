import 'package:doctor_appoitment/features/authentication/screens/widgets/texts/text_with_icon.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class NDoctorProfileSection extends StatelessWidget {
  const NDoctorProfileSection({
    super.key, 
    required this.doctorName,
    required this.specialty,
    required this.ratings,
    required this.image,
    required this.experience,
    required this.hospitalName,
  });

  final String doctorName;
  final String specialty;
  final double ratings;
  final ImageProvider image;
  final String experience;
  final String hospitalName;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(Nsize.defaultSpace),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: image,
            ),
            const SizedBox(height: Nsize.spaceBtwItems),
            Text(
              doctorName,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: Nsize.spaceBtwItems / 2),
            Text(
              specialty,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: NColors.dark,
                  ),
            ),
            const SizedBox(height: Nsize.spaceBtwItems),
            const Divider(),
            const SizedBox(height: Nsize.spaceBtwItems),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NTextWithIcon(
                  title: '$ratings',
                  iconData: Icons.star,
                  iconColor: Colors.amber,
                ),
                NTextWithIcon(
                  title: hospitalName,
                  iconData: Icons.local_hospital,
                  iconColor: NColors.primary,
                ),
                NTextWithIcon(
                  title: experience,
                  iconData: Icons.medical_services,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}