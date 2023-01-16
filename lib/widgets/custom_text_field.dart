import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: ksearchTextStyle,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(kdoubleradius),
          borderSide: BorderSide.none,),
          hintText: "Search...",
          prefixIcon: const Icon(Icons.search, color: kbuttoncolor,),
        ),
      );
  }
}