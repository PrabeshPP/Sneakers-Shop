import 'package:flutter/material.dart';
import 'dart:math' as Math;

import 'package:nepseapp/view/widgets/UI/Profile/UI1.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
        child: Stack(
      children:const  [
       CurvedContainer()
      ],
    ));
  }
}


