import 'package:flutter/material.dart';

class LeftClipper extends StatelessWidget {
  const LeftClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(
      child: Container(
        height: size.height * 0.3,
        width: size.width * 0.6,
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
    path.lineTo(size.height * 0.4, 0);
    Offset firstControlPoint =
        Offset((size.width / 4) * 3, (size.height * 0.5) + 20);
    Offset firstEndPoint = Offset(size.width * 0.4, (size.height * 0.5) - 20);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    Offset secondControlPoint = Offset(size.width * 0.7, size.height * 0.4);
    Offset secondEndPoint = Offset(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
