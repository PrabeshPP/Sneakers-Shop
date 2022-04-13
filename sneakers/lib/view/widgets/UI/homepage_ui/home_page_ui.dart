import 'package:flutter/material.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/flash_sale.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/recent_view.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/recent_view_ui.dart';

import 'package:nepseapp/view/widgets/UI/homepage_ui/brands_Icons.dart';
import 'package:nepseapp/view/widgets/UI/homepage_ui/offer.dart';

class HomePageUI extends StatelessWidget {
  const HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OfferCard(),
        BrandsIconCard(),
        FlashSale(),
        RecentViewUI(),
      ],
    );
  }
}
