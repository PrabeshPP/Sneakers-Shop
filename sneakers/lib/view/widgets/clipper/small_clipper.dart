import 'package:flutter/material.dart';

class LeftClipper extends StatelessWidget {
  const LeftClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(
      child: Container(
        height: size.height * 0.65,
        width: size.width,
        decoration: const BoxDecoration(color: Colors.red),
      ),
      clipper: MyCustomClipper(),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.7);
    Offset firstControlPoint = Offset(size.width * 0.2, size.height * 0.75);
    Offset firstEndPoint = Offset(size.width * 0.48, size.height * 0.68);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    Offset secondControlPoint = Offset(size.width * 0.8, size.height * 0.6);
    Offset secondEndPoint = Offset(size.width, size.height * 0.7);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
