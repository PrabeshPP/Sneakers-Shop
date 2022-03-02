import 'package:flutter/material.dart';
import 'package:nepseapp/view/widgets/UI/siginup_UI.dart';

bool isVisible = true;

class SiginUpPage extends StatelessWidget {
  const SiginUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        decoration:const BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red,Colors.blue]
          ,begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
        child:const  SiginUpUI(),
      ),
    );
  }
}
