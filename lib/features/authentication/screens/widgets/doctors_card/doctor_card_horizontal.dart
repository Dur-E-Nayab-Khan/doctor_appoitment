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
// ... (keep all your existing imports)

class NDoctorCardHorizontal extends StatelessWidget {
  const NDoctorCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = NHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 310,
        height: 140, // Fixed height for horizontal card
        decoration: BoxDecoration(
          boxShadow: [NShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Nsize.productImageRadius),
          color: dark ? NColors.darkgrey : NColors.white,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Image Section (Left)
            NRoundedContainer(
              width: 120, // Fixed width for image
              margin: const EdgeInsets.all(1),
              padding: const EdgeInsets.all(Nsize.xs),
              backgroundColor: dark ? NColors.dark : NColors.light,
              child: const NRoundedImage(
                imageUrl: NImages.doctor1,
                applyImageRadius: true,
                fit: BoxFit.cover,
              ),
            ),

            /// Details Section (Right)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(Nsize.sm),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// Top Text Content
                    Column(
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

                    /// Bottom Button
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: Nsize.sm),
                      decoration: BoxDecoration(
                        color: NColors.primary,
                        borderRadius: BorderRadius.circular(Nsize.sm),
                      ),
                      child: const Center(
                        child: Text(
                          'Book Appointment',
                          style: TextStyle(
                            color: NColors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12, // Slightly smaller for horizontal card
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}