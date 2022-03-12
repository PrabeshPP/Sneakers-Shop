import 'package:flutter/material.dart';
import 'package:nepseapp/view/widgets/UI/homepage/offer.dart';
import 'package:nepseapp/view/widgets/UI/homepage/search_bar.dart';

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Material(
      child: SizedBox(
        height:size.height,
        width: size.width,
        child: Column(
          children: const [
            SearchBarUI(),
            OfferCard(),
            
          ],
        ),
      ),
    );
  }
}
