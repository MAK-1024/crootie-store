import 'package:flutter/material.dart';

class ContainerClipper3 extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height - 160);

    path.quadraticBezierTo(
      size.width * 0.2,
      size.height - 90,
      size.width * 0.5,
      size.height - 60,
    );
    path.quadraticBezierTo(
      size.width * 0.6,
      size.height - 50,
      size.width,
      size.height - 20,
    );

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
