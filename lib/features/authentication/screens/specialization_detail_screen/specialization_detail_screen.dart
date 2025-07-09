import 'package:doctor_appoitment/features/authentication/screens/all_doctors/all_doctors.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/appBar/appbar.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/doctors_card/doctor_card_horizontal.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/doctors_card/doctor_card_vertical.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/images/t_rounded_image.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/layouts/grid_layout.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/text/section_heading.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpecializationDetailScreen extends StatelessWidget {
  const SpecializationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NAppBar(
        title: Text('ENT'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Nsize.defaultSpace),
          child: Column(
            children: [
              //Banner
              const NRoundedImage(
                imageUrl: NImages.bannerImage2,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(
                height: Nsize.spaceBtwSections,
              ),
              //Sub Categories
              Column(
                children: [
                  NSectionHeading(
                    title: 'Doctors',
                    onPressed:  ()=>Get.to(()=>const AllDoctors()),
                  ),
                  const SizedBox(
                    height: Nsize.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                        itemCount: 4,
                        separatorBuilder: (context, index) => const SizedBox(
                              width: Nsize.spaceBtwItems,
                            ),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) =>
                            const NDoctorCardHorizontal()),
                  ),
                  const SizedBox(
                    height: Nsize.spaceBtwItems,
                  ),
                  NSectionHeading(
                    title: 'Recommendations',
                    onPressed:  ()=>Get.to(()=>const AllDoctors()),
                  ),
                  NGridViewLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const NDoctorCardVertical()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
