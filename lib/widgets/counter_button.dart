import 'package:app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CounterButton extends StatefulWidget {
  final Function()? onTap;
  final String sign;
  const CounterButton({super.key, required this.onTap, required this.sign});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
        color: kbuttoncolor,
        borderRadius: BorderRadius.circular(30)
        ),
        child: Center(child: Text(widget.sign, style: TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold),)),
      ),
    );
  }
}