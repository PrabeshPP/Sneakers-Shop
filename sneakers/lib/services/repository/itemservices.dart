import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:nepseapp/model/item.dart';

class ItemServices {
  Future<List<Item>> getItem() async {
    final jsonFile = await rootBundle.loadString("assets/JSON/file.json");
    final jsonDecodeFile = jsonDecode(jsonFile);
    var productsData = jsonDecodeFile["products"];
    List<Item> itemList =
        List.from(productsData).map((e) => Item.fromJson(e)).toList();

    return itemList;
  }
}
