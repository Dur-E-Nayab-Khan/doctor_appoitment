import 'package:doctor_appoitment/features/authentication/screens/widgets/doctors_card/doctor_card_vertical.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/layouts/grid_layout.dart';
import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';


class NSortableDoctors extends StatelessWidget {
  const NSortableDoctors({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
          onChanged: (value){},
          items: ['Name','High Fee','Lower Fee','Nearest','Popularity']
          .map((option)=>DropdownMenuItem(value: option,child:Text(option))).toList(),)    ,
          const SizedBox(height: Nsize.spaceBtwSections,) ,

          //Products
          NGridViewLayout(itemCount: 8, itemBuilder: (_,index)=>const NDoctorCardVertical())      
      ],
    );
  }
}
