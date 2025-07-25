import 'package:doctor_appoitment/utils/theme/constants/sizes.dart';
import 'package:flutter/material.dart';

class NProfileMenu extends StatelessWidget {
  const NProfileMenu({
    super.key, 
    this.icon = Icons.arrow_right, 
    required this.onPressed, 
    required this.title, 
    required this.value,
  });

  final IconData icon;
  final VoidCallback onPressed;
  final String title, value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(padding: const EdgeInsets.symmetric(vertical: Nsize.spaceBtwItems/2),
      child: Row(children: [
        Expanded(flex: 3,child: Text(title,style: Theme.of(context).textTheme.bodySmall,overflow: TextOverflow.ellipsis,),),
        Expanded(flex: 5,child: Text(value,style: Theme.of(context).textTheme.bodyMedium,overflow: TextOverflow.ellipsis,),),
        Expanded(child: Icon(icon,size: 18,))
      ],),),
      
    );
  }
}