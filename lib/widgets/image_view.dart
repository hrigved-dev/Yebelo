import 'package:app/constants.dart';
import 'package:app/model/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImageView extends StatelessWidget {
  ItemModel item;
  ImageView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 18,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kdoubleradius)
      ),
      child: Center(
        child: Container(
          height: 380,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.orange.shade100,
            borderRadius: BorderRadius.circular(kdoubleradius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Hero(tag: item.id, child: Image.asset(item.img)),
          ),
        ),
      ),
    );
  }
}