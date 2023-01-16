import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class CustomPill extends StatelessWidget {
  final String choice;
  Function()? onTap;
  CustomPill({super.key, required this.choice, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 18,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kdoubleradius)),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            color: kbuttoncolor,
            borderRadius: BorderRadius.circular(kdoubleradius),
      
          ),
          child: Center(child: Text(choice, style: TextStyle(color: Colors.black),)),
        ),
      ),
    );
  }
}