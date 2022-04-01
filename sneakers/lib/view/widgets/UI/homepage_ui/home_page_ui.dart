import 'package:flutter/material.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/flash_sale.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/search_bar.dart';

import 'package:nepseapp/view/widgets/UI/homepage_ui/brands_Icons.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/offer.dart';

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: const [
            SearchBarUI(),
            OfferCard(),
            BrandsIconCard(),
            FlashSale(),
          ],
        ),
      ),
    );
  }
}
