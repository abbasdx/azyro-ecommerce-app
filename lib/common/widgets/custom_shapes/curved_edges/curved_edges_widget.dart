import 'package:azyro_ecommerce_app/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: CustomCurvedEdges(), child: child);
  }
}
