import 'package:doctor_appoitment/features/authentication/screens/widgets/custom_shapes/curved_widgets/curved_edges.dart';
import 'package:flutter/material.dart';

class NCurvedEdgeWidget extends StatelessWidget {
  const NCurvedEdgeWidget({
    super.key, this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: NCustomCurvedEdges(),
      child: child,
    );
  }
}

