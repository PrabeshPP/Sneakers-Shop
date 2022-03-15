import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nepseapp/model/brandsIcons.dart';

class IconsServices {
  Future<List<BrandsIcon>> getItem(String fileName) async {
    final jsonFile = await rootBundle.loadString("assets/JSON/Brand.json");
    final jsonDecodeFile = jsonDecode(jsonFile);
    var productsData = jsonDecodeFile["products"];
    //mapping the data
  List<BrandsIcon> brandsIconList=List.from(productsData).map((e) =>BrandsIcon.fromJson(e) ).toList();
    

    return brandsIconList ;
  }
}
