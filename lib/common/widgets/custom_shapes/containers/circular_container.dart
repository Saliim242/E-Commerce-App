import 'package:flutter/material.dart';

class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.paddding = 0,
    this.radius = 400,
    this.child,
    required this.backgroundColor,
  });
  final double? width;
  final double? height;
  final double? paddding;
  final double? radius;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(paddding!),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius!),
      ),
      child: child,
    );
  }
}
