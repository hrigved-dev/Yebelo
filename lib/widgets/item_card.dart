import 'package:app/constants.dart';
import 'package:app/model/item_model.dart';
import 'package:app/screens/info_screen.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  ItemModel item;
  ItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: ((context) {
          return InfoScreen(item: item);
        })));
      },
      child: SizedBox(
        height: 120,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kdoubleradius)
          ),
          elevation: 20,
          shadowColor: Colors.orange.shade400,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
            child: Row(
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)
                  ),
                  elevation: 18,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(kdoubleradius),
                    child: Container(
                      color: Colors.orange.shade200,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Hero(
                          tag: item.id,
                          child: Image.asset(item.img, height: 80, width: 80, fit: BoxFit.contain,)),
                      ))),
                ),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.name, style: kNameTextStyle,),
                        const SizedBox(height: 5,),
                        Text("Availability: ${item.availability}", style: kAvailabilityTextStyle,)
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text("₹${item.cost}/-", style: kcostTextStyle,),
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }
}