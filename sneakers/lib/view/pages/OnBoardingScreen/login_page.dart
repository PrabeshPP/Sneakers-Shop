// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:nepseapp/view/widgets/UI/login_ui.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginUi(),
    );
  }
}
