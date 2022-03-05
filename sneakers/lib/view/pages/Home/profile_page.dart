import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
        child: Column(
      children: [
        ClipPath(
          child: Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(32.0))),
          ),
          clipper: MyClipper(),
        )
      ],
    ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    Offset firstContorlPoint = Offset(size.width * 0.1, size.height * 0.9);
    Offset firstEndPoint = Offset(size.width * 0.15, size.height * 0.85);
    path.quadraticBezierTo(firstContorlPoint.dx, firstContorlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height * 0.4);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
