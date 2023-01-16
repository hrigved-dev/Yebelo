import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class AccountAvatar extends StatelessWidget {
  const AccountAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
            backgroundColor: kbuttoncolor,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset("assets/profile/person.jpg")),
          );
  }
}