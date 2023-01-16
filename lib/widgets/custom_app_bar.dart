import 'package:app/widgets/account_avatar.dart';
import 'package:app/widgets/letter_logo.dart';
import 'package:app/widgets/logo_dashboard.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        children: const [
          Icon(Icons.menu),
          LogoDashboard(),
          SizedBox(width: 60,),
          LetterLogo(),
          Spacer(),
          AccountAvatar(),
        ],
      ),
    );
  }
}