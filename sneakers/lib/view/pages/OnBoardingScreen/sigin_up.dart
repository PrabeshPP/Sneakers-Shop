import 'package:flutter/material.dart';
import 'package:nepseapp/view/widgets/UI/siginUp_field.dart';

class SiginUpPage extends StatelessWidget {
  const SiginUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink(
        child: SiginUp(),
      ),
    );
  }
}
