import 'package:flutter/material.dart';

const kbackgroundcolor = Colors.white;
const kbuttoncolor = Color(0xfff79326);
const double kdoubleradius = 18;
// const kimagebackgroundcolor = Colors.orange.shade400;
const kistyle = TextStyle(
  color: Colors.black,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
const kwordstyle = TextStyle(
  color: kbuttoncolor,
  fontSize: 24,
  fontWeight: FontWeight.bold,
);
const ksearchTextStyle = TextStyle(color: Colors.black);
const kshadowList = [
  BoxShadow(
        color: Colors.grey,
        offset: Offset(
                  5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), 
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ),
];
const kproductTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 24,
  fontWeight: FontWeight.bold,
  letterSpacing: 1
);
const kcostTextStyle = TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18);
const kNameTextStyle = TextStyle(color: kbuttoncolor, fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 1);
const kAvailabilityTextStyle = TextStyle(color: Colors.black, fontSize: 16);
const String loremipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";