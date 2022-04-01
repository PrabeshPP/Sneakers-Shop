import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nepseapp/model/brandsIcons.dart';

class IconsServices {
  Future<List<BrandsIcon>> getItem() async {
    final jsonFile = await rootBundle.loadString("assets/JSON/Brand.json");
    final jsonDecodeFile = jsonDecode(jsonFile);
    var productsData = jsonDecodeFile["Brands"];
    //mapping the data
    List<BrandsIcon> brandsIconList =
        List.from(productsData).map((e) => BrandsIcon.fromJson(e)).toList();

    return brandsIconList;
  }
}
