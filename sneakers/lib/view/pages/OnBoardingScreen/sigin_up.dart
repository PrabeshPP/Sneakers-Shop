import 'package:flutter/material.dart';
import 'package:nepseapp/view/widgets/UI/siginup_UI.dart';


class SiginUpPage extends StatelessWidget {
  const SiginUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     body: Ink(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
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
