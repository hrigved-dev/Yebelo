import 'dart:convert';
import 'package:app/model/item_model.dart';
import 'package:flutter/services.dart';

class JsonService {
    List<ItemModel> itemList = [];
    
    Future<void> getAllData() async {
    final String response = await rootBundle.loadString("assets/data/items.json");
    final data =  jsonDecode(response);
    // itemList.add(data);

    // print(itemList);
    for(int i = 0; i < data.length; i++) {
        ItemModel itemModel = ItemModel(
          name: data[i]["p_name"],
          id: data[i]["p_id"],
          cost: data[i]["p_cost"],
          availability: data[i]["p_availability"],
          details: data[i]["p_details"],
          category: data[i]["p_category"],
          img: data[i]["p_image"],
    );
    itemList.add(itemModel);
    }
  }
}