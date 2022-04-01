import 'package:flutter/material.dart';

class BigClipper extends StatelessWidget {
  const BigClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(
      child: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 82, 116, 161),
            Color.fromARGB(255, 230, 49, 109),
          ],
        )),
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
    Offset firstControlPoint = Offset(size.width * 0.2, size.height * 0.72);
    Offset firstEndPoint = Offset(size.width * 0.38, size.height * 0.66);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    Offset secondControlPoint = Offset(size.width * 0.7, size.height * 0.60);
    Offset secondEndPoint = Offset(size.width, size.height * 0.72);
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
