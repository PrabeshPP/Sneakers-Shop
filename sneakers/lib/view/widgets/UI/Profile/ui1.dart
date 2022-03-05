import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipPath(
      child: Container(
        height: size.height * 0.3,
        width: size.width,
        decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32.0))),
      ),
      clipper: MyClipper(),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.7);
    Offset firstContorlPoint = Offset(size.width * 0.13, size.height * 0.93);
    Offset firstEndPoint = Offset(size.width * 0.2, size.height * 0.88);
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
