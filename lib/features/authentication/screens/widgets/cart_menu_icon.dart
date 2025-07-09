import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:flutter/material.dart';


class NCartCounterIcon extends StatelessWidget {
  const NCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final Color? iconColor; 

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.shopping_bag,
            color: iconColor ?? Theme.of(context).iconTheme.color, 
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: NColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: NColors.white, fontSizeFactor: 0.8),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
