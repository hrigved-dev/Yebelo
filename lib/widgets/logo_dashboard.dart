import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LogoDashboard extends StatelessWidget {
  const LogoDashboard({super.key});

  @override
  Widget build(BuildContext context) {
      return Image.asset("assets/logo/icond.png", width: 60, height: 60,);
  }
}