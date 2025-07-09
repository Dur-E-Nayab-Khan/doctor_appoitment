import 'package:doctor_appoitment/features/authentication/screens/Home/widgets/home_app_bar.dart';
import 'package:doctor_appoitment/features/authentication/screens/Home/widgets/home_specialities.dart';
import 'package:doctor_appoitment/features/authentication/screens/Home/widgets/promo_slider.dart';
import 'package:doctor_appoitment/features/authentication/screens/all_doctors/all_doctors.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/containers/search_container.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/doctors_card/doctor_card_vertical.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/layouts/grid_layout.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/text/section_heading.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NPrimaryHeaderContainer(
                child: Column(
              children: [
                //App Bar
                const NHomeAppBar(),
                const SizedBox(
                  height: Nsize.spaceBtwSections,
                ),
                //Search Bar
                const NSearchContainer(
                  text: 'Search',
                ),
                const SizedBox(
                  height: Nsize.spaceBtwSections,
                ),
                // Categories
                Padding(
                  padding: const EdgeInsets.only(left: Nsize.defaultSpace),
                  child: Column(
                    children: const [
                      NSectionHeading(
                        title: 'Specialities',
                        showActionButton: false,
                        textColor: Colors.white,
                      ),
                      SizedBox(
                        height: Nsize.spaceBtwItems,
                      ),
                      //Categories
                      NHomeSpecialities()
                    ],
                  ),
                ),
                const SizedBox(height: Nsize.spaceBtwSections,)
              ],
            )),
            //Body
           Padding(
              padding: const EdgeInsets.all(Nsize.defaultSpace),
             child: Column(
                children:  [
                  const NPromoSlider(
                    banners: [
                     NImages.bannerImage1,
                     NImages.bannerImage2,
                     NImages.bannerImage3
                    ],
                  ),
                  const SizedBox(
                    height: Nsize.spaceBtwSections,
                ),
                  //Heading
                  NSectionHeading(
                   title: 'Popular Doctors',
                  onPressed: ()=>Get.to(()=>const AllDoctors())),
                
                  const SizedBox(
                   height: Nsize.spaceBtwItems,
                  ),
                  NGridViewLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) => const NDoctorCardVertical()),

                  
              ],
             ),
           )
         // ],
      ] 
      
      ),
    )
    );
  }
}
