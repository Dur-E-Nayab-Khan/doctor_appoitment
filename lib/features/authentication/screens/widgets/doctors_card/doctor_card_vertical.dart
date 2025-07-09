import 'package:doctor_appoitment/features/authentication/screens/Home/widgets/shadows.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/containers/rounder_shape.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/doctors_card/doctor_specialization.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/images/t_rounded_image.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/texts/product_title_text.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/texts/t_brand_title_text_with_icon.dart';
import 'package:doctor_appoitment/utils/helpers/helpers_functions.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
class NDoctorCardVertical extends StatelessWidget {
  const NDoctorCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        constraints: const BoxConstraints(
          minHeight: 280, // Set minimum height to prevent overflow
        ),
        decoration: BoxDecoration(
          boxShadow: [NShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Nsize.productImageRadius),
          color: dark ? NColors.darkgrey : NColors.white,
        ),
        child: IntrinsicHeight( // Ensures proper height calculation
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Image Section
              NRoundedContainer(
                height: 160, 
                padding: const EdgeInsets.all(Nsize.xs),
                backgroundColor: dark ? NColors.dark : NColors.light,
                child: const NRoundedImage(
                  imageUrl: NImages.doctor1,
                  applyImageRadius: true,
                  fit: BoxFit.cover,
                ),
              ),

              // Details Section
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Nsize.sm,
                  vertical: Nsize.sm,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NProductTitleText(
                      title: 'Dr. Ali Zeb',
                      smallSize: true,
                    ),
                    const SizedBox(height: Nsize.spaceBtwItems / 4),
                    NDoctorSpecialization(
                      specialization: 'Cardiologist',
                      isDark: dark,
                    ),
                    const SizedBox(height: Nsize.spaceBtwItems / 4),
                    const NBrandTitleWithVerifiedIcon(title: 'RMI Hospital'),
                  ],
                ),
              ),

              // Spacer to push button to bottom
              const Spacer(),

              // Button Section
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: Nsize.sm),
                decoration: const BoxDecoration(
                  color: NColors.primary,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(Nsize.productImageRadius),
                    bottomRight: Radius.circular(Nsize.productImageRadius),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Book Appointment',
                    style: TextStyle(
                      color: NColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}