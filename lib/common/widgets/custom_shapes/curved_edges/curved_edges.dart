import 'package:flutter/material.dart';

class TCustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);

    final firstCurvedPoint = Offset(0, size.height - 20);
    final lastCurvedPoint = Offset(30, size.height - 20);

    path.quadraticBezierTo(
      firstCurvedPoint.dx,
      firstCurvedPoint.dy,
      lastCurvedPoint.dx,
      lastCurvedPoint.dy,
    );

    // Line Secoud
    final secondFirstCurvedPoint = Offset(0, size.height - 20);
    final secondLastCurvedPoint = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(
      secondFirstCurvedPoint.dx,
      secondFirstCurvedPoint.dy,
      secondLastCurvedPoint.dx,
      secondLastCurvedPoint.dy,
    );

    // Thir Shape
    final thirdFirstCurvedPoint = Offset(size.width, size.height - 20);
    final thirdLastCurvedPoint = Offset(size.width, size.height);

    path.quadraticBezierTo(
      thirdFirstCurvedPoint.dx,
      thirdFirstCurvedPoint.dy,
      thirdLastCurvedPoint.dx,
      thirdLastCurvedPoint.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
