import 'package:doctor_appoitment/features/authentication/screens/widgets/images/t_circular_image.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:doctor_appoitment/utils/theme/constants/image_strings.dart';
import 'package:flutter/material.dart';

class NUserProfileTile extends StatelessWidget {
  const NUserProfileTile({
    super.key, required this.onPressed,
  });

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const NCircularImage(image: NImages.doctor2, height: 50,width: 50,padding: 0,),
      title: Text('Dur E Nayab',style: Theme.of(context).textTheme.headlineSmall!.apply(color: NColors.white),),
      subtitle: Text('durenayab@gmail.com', style: Theme.of(context).textTheme.bodyMedium!.apply(color:NColors.white)),
      trailing: IconButton(onPressed: onPressed ,icon: const Icon(Icons.edit,color: NColors.white,),),
    );
  }
}