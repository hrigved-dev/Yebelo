import 'package:app/constants.dart';
import 'package:app/screens/dashboard.dart';
import 'package:app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kart',
      theme: ThemeData(
        scaffoldBackgroundColor: kbackgroundcolor,
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}

