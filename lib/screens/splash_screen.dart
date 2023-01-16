import 'dart:async';
import 'package:app/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(context, PageTransition(child: Dashboard(), type: PageTransitionType.fade));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: 'icon',
          child: Container(
            height: 280,
            width: 280,
            child: Image.asset("assets/logo/icon.png"))),
      ),
    );
  }
}