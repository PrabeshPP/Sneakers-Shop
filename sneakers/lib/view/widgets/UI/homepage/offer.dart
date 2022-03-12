import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.16,
      width: size.width*0.9,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 83, 75, 1)
      ),
    );
  }
}
