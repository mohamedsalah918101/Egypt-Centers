import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  iconTheme: const IconThemeData(
    color: Colors.black,
  ),
  primarySwatch: Colors.blue,
  fontFamily: 'tajawal',
  // appBarTheme: const AppBarTheme(
  //   titleSpacing: 20,
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //     statusBarColor: Colors.black26,
  //     statusBarIconBrightness: Brightness.dark,
  //   ),
  //   titleTextStyle: TextStyle(
  //     color: Colors.black,
  //     fontSize: 24,
  //     fontWeight: FontWeight.bold,
  //     letterSpacing: 1.5,
  //   ),
  //   backgroundColor: Colors.transparent,
  //   elevation: 0.0,
  //   iconTheme: IconThemeData(
  //     color: kDefaultColor,
  //     size: 14,
  //   ),
  // ),
  // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
  //   selectedItemColor: kDefaultColor,
  //   unselectedItemColor: Colors.grey,
  //   elevation: 20.0,
  //   type: BottomNavigationBarType.fixed,
  //   backgroundColor: Colors.white,
  // ),
  // textTheme: const TextTheme(
  //   bodyText1: TextStyle(
  //     fontSize: 24,
  //     fontWeight: FontWeight.bold,
  //     color: Colors.black,
  //   ),
  //   subtitle1: TextStyle(
  //     fontSize: 18,
  //     fontWeight: FontWeight.w500,
  //   ),
  // ),


);

ThemeData darkTheme= ThemeData(
  scaffoldBackgroundColor:  Colors.black54,
  iconTheme: const IconThemeData(
    color: Colors.white,
  ),
  primarySwatch: Colors.blue,

  appBarTheme: const AppBarTheme(
      color: Colors.black54,
      iconTheme: IconThemeData(color: Colors.white)),
  textTheme: const TextTheme(
      bodyLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
  ),

  fontFamily: 'tajawal',

);