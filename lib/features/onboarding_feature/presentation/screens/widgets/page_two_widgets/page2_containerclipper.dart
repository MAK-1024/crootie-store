import 'package:flutter/material.dart';

class ContainerClipper2 extends CustomClipper<Path> {
  var path = Path();
  @override
  Path getClip(Size size) {
    path.lineTo(0, size.height - 110);

    path.quadraticBezierTo(
      size.width * 0.15,
      size.height - 118,
      size.width * 0.35,
      size.height - 80,
    );
    path.quadraticBezierTo(
      size.width * 0.7,
      size.height - 20,
      size.width,
      size.height - 160,
    );
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
