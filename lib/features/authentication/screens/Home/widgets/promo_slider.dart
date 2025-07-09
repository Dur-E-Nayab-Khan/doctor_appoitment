import 'package:carousel_slider/carousel_slider.dart';
import 'package:doctor_appoitment/features/authentication/controllers/home_controller.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/containers/circular_shape.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/images/t_rounded_image.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NPromoSlider extends StatelessWidget {
  const NPromoSlider({
    super.key, required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
       CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index ,_ ) => controller.updatePageIndicator(index)
          ),
           items: banners.map((url) =>  NRoundedImage(imageUrl:url)).toList()),
           const SizedBox(height: Nsize.spaceBtwItems,),
           Center(
             child: Obx(
               ()=> Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for(int i=0;i<banners.length;i++)
                    NCircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value ==i?NColors.primary:NColors.grey, 
                  )
                ],
               ),
             ),
           )
      ],
    );
  }
}
