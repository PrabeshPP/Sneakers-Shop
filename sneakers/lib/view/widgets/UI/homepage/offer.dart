import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.height * 0.025),
      child: Stack(
        children: [
          Container(
            height: size.height * 0.16,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 139, 126, 4),
                borderRadius: BorderRadius.circular(size.width * 0.06)),
          ),
          Positioned(
              top: size.height * 0.01,
              left: size.width * 0.06,
              child: Text(
                "HOT SALE",
                style: TextStyle(
                    color: Colors.white, fontSize: size.height * 0.03),
              )),
          Positioned(
              top: size.height * 0.046,
              left: size.width * 0.06,
              child: Text(
                "50%",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: size.height * 0.03,
                    fontWeight: FontWeight.bold),
              )),
          Positioned(
              top: size.height * 0.046,
              left: size.width * 0.22,
              child: Text(
                "OFF",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: size.height * 0.03,
                ),
              )),
        ],
      ),
    );
  }
}
