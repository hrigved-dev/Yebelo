import 'package:app/model/item_model.dart';
import 'package:app/widgets/item_card.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  List<ItemModel> itemList;
  Items({super.key, required this.itemList});

  @override
  Widget build(BuildContext context) {
    return Flexible(
              child: ListView.builder(
                itemCount: itemList.length,
                itemBuilder: (context, int i) {
                return Column(
                  children: [
                    ItemCard(item: itemList[i]),
                    const SizedBox(height: 20,),
                  ],
                );
              }));
  }
}