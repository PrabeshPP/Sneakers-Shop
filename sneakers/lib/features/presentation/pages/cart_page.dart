import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text("Hi From Cart Page"),
      ),
      
    );
  }
}