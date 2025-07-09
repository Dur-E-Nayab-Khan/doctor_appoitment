import 'package:doctor_appoitment/features/authentication/screens/specialization_detail_screen/specialization_detail_screen.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/image_text_widgets/vertical_image_text.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NHomeSpecialities extends StatelessWidget {
  const NHomeSpecialities({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:80,
      child: ListView.builder(shrinkWrap: true,
      itemCount: 12,
      scrollDirection: Axis.horizontal,
      itemBuilder: (_, index){
      return NVerticalImageText(image: NImages.entIcon, title: 'ENT Category',onTap: ()=>Get.to(()=>const SpecializationDetailScreen()),);
      }
      ) ,
    );
  }
}
