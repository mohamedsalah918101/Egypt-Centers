import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Color(0xFFFE5E00);
  static const Color scaffoldBGLight = Color(0xfffbfbfb);
  static const Color hintColor = Color(0xffB0B0B0);
  static const Color mainTextColor = Color(0xff3B4348);
  static const Color bottomSheetColor = Color(0xffeeeeee);
  static const Color attentionColor = Color(0xffce0303);
  // static const Color lightGrey = Color(0xff929292);
  static Color dividerColor = const Color(0xff3B4348).withOpacity(0.1);

  /*static const Color secondary = Color(0xFF1D0E55);
  static const Color darkScaffoldColor = Color(0xff131517);
  static const Color secondaryDarkColor = Color(0xff131517);
  static const Color thirdDarkColor = Color(0xff444444);
  static const Color lightScaffoldColor = Colors.white;

  static const Color attributeColor = Color(0xFF148BF4);
  static const Color selectedColor = Color(0xFFEDF6FD);
  static const Color buttonGrey = Color(0xFFD9D9D9);
  static const Color subTitleGrey = Color(0xFF484850);
  static const Color textGrey = Color(0xFF5A5A5A);
  static const Color subTextGrey = Color(0xFF393939);
  static const Color borderGrey = Color(0xffCCCCCC);
  static const Color borderGreyLight = Color(0xffECECEC);
  static const Color borderGreyBold = Color(0xffCDCDCD);
  static const Color borderBlue = Color(0xff0285E0);
  static const Color acceptGreen = Color(0xffCBFFAB);
  static const Color canceledRed = Color(0xffFFC0C3);
  static const Color textRed = Color(0xffB85F66);

  static const Color boldGreen = Color(0xff6BB85F);
  static const Color boldBlue = Color(0xff006996);
  static const Color boldGrey = Color(0xff565656);
  static const Color lightGrey = Color(0xff929292);
  static const Color babyBlue = Color(0xFF55B9FE);
  static const Color lightBabyBlue = Color(0xFFC7E4F8);
  static const Color lightRed = Color(0xFFFF3F48);
  static const Color boldDark = Color(0xFF202124);

  static const Color dark = Color(0xff353535);
  static const Color white = Color(0xffFFFFFF);
  static const Color black = Color(0xff000000);
  static const Color blue = Color(0xff4460A0);
  static const Color grey = Color(0xFF54545C);
*/
  static const LinearGradient gradientPrimary = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFE5E00),
        Color(0xFFFB8D12),
      ]);
}
