import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/containers/circular_shape.dart';
import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/curved_widgets/curved_edges_widget.dart';
import 'package:doctor_appoitment/utils/theme/constants/colors.dart';
import 'package:flutter/material.dart';


class NPrimaryHeaderContainer extends StatelessWidget {
  const NPrimaryHeaderContainer({
    super.key, required this.child,
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return NCurvedEdgeWidget(
      child: Container(
        color: NColors.primary,
        padding: const EdgeInsets.only(bottom: 0),
          child: Stack(
            children:[
    // Background circle
    Positioned(top:-150, right:-250,child: NCircularContainer(backgroundColor: NColors.textwhite.withOpacity(0.1),)),
    Positioned(top:100, right:-300,child: NCircularContainer(backgroundColor: NColors.textwhite.withOpacity(0.1),)),
    child,
            ],
          ),
        ),
    );
  }
}
