import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FlashSaleCard extends StatelessWidget {
  const FlashSaleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.02),
      child: SizedBox(
        height: size.height * 0.2,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      child: Stack(
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 98, 100, 0),
                            width: size.width * 0.43,
                            height: size.height * 0.2,
                            child: Image.asset(
                              "assets/images/fl1.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                         Positioned(
                            right: 0,
                            child: Container(
                              height: size.height * 0.04,
                              width: size.width * 0.2,
                              color: Colors.red,
                              child: Center(
                                child: Text("-20%",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 5,
                            bottom: 0,
                            child: Text("\$300",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    )
                  : Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 0.03, right: size.width * 0.03),
                      child: Stack(
                        children: [
                          Container(
                            color: const Color.fromARGB(255, 98, 100, 0),
                            width: size.width * 0.43,
                            height: size.height * 0.2,
                            child: Image.asset(
                              "assets/images/Vans.png",
                              fit: BoxFit.contain,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              height: size.height * 0.04,
                              width: size.width * 0.2,
                              color: Colors.red,
                              child: Center(
                                child: Text("-70%",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline6!
                                        .copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 5,
                            bottom: 0,
                            child: Text("\$150",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    );
            }),
      ),
    );
  }
}
