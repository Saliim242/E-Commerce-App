import 'package:flutter/material.dart';
import 'package:flutter_projects/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class TCustomCurvedEdgesWidget extends StatelessWidget {
  const TCustomCurvedEdgesWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child,
    );
  }
}
