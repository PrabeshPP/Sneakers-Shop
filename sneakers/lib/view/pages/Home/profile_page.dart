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
        Transform(
          transform: Matrix4.rotationY(Math.pi/6),
          child: Container(
            height: size.height * 0.3,
            width: size.width,
            decoration: const BoxDecoration(color: Colors.red),
          ),
        ),
      ],
    ));
  }
}
