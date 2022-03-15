// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BrandsIconCard extends StatelessWidget {
  const BrandsIconCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.06,
      width: size.width,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: size.width * 0.03),
              child: Container(
                width: size.width * 0.35,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(size.width * 0.1)),
                child: Center(child: Text("HEllo")),
              ),
            );
          }),
    );
  }
}
