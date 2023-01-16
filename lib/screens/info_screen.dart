import 'package:app/constants.dart';
import 'package:app/model/item_model.dart';
import 'package:app/widgets/image_view.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class InfoScreen extends StatelessWidget {
  ItemModel item;
  InfoScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageView(item: item),
            const SizedBox(height: 20,),
            Row(
              children: [
                Text(item.name, style: const TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 1),),
                const Spacer(),
                Text("₹${item.cost}/-", style: const TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold, letterSpacing: 1),)
              ],
            ),
            const SizedBox(height: 2,),
            Text("Availability: ${item.availability}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
            const SizedBox(height: 2,),
            Text("Details: ${item.details}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
            const SizedBox(height: 2,),
            Text("Category: ${item.category}", style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
            const SizedBox(height: 8,),
            const Divider(color: Colors.black,),
            const SizedBox(height: 8,),
            const Expanded(child: Text(loremipsum, style: TextStyle(fontSize: 15),)), 
            const SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: CustomButton(name: item.name,),
            ),
          ],
        ),
      ),
    );
  }
}