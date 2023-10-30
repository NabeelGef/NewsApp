import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {

  static const Color transparent = Color(0x00000000);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffFFFFFF);
  static const Color white2  = Color(0xffF9ECFF);
  static const Color lightWhite = Color(0xFFF3F2F7);
  static const Color darkWhite = Color(0x99ffffff);
  static const Color milk =  Color(0xFFE3E3F9);

  static const Color blue = Color(0xFF597AEC);
  static const Color blue2 = Color(0xff6679E7);
  static const Color blue3 = Color(0xff5A7AEB);
  static const Color darkBlue = Color(0xFF085b7c);
  static const Color lightBlue2 = Color(0xff5F7AEA);
  static const Color deepBlue  = Color(0xff022ECA);
  static const Color gradientBlue = Color(0xff5C7AEB);

  static const Color mainPurple = Color(0xFFA43DD4);
  static const Color newDarkPurple = Color(0xFF8077DC);
  static const Color lightPurble = Color(0xffD171BB);
  static const Color darkPurple = Color(0xFF8000FF);
  static const Color purple = Color(0xFFB673C6);
  static const Color purple2 = Color(0xFF9628CA);
  static const Color deepPurple = Color(0xff6C009F);

  static const Color pink = Color(0xFFD371BB);
  static const Color pink2 = Color(0xFFCD71BD);
  static const Color pink3  = Color(0xffC672C0);
  static const Color lightPink = Color(0xFFFAE4FF);
  static const Color lightPink2 = Color(0xffD071BC);
  static const Color darkPink = Color(0xFFFC446E);
  static const Color gradientPink = Color(0xffCF71BD);
  
  static const Color grey = Color(0xFF747474);
  static const Color grey2 = Color(0xFF8E8E8E);
  static const Color grey3 = Color(0xffB9B9B9);
  static const Color grey4 = Color(0xffD9D9D9);
  static const Color grey5 = Color(0xff9E9E9E);
  static const Color lightGrey = Color(0xFFCDCDCD);
  static const Color lightGrey2 = Color(0xff6E7781);
  static const Color darkGrey = Color(0xFF323232);
  static const Color deepGrey  = Color(0xff626262);
  static const Color newGrey = Color(0x66A43DD4);

  static const Color lightYellow = Color(0xFFD3C971);

  static const Color green = Color(0xFF4E9C00);
  static const Color green2 = Color(0xff007E2B);
  static const Color darkGreen  = Color(0xff267700);

  static const Color red = Color(0xFFC80000);
  static const Color red2  = Color(0xffFF0000);

  static Color shimmerContainerColor =  Colors.grey[300]!;
  static const Color drawerColor = Color(0xFF11215B);
  static mainGradient(){
    return const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [
          gradientBlue,
          gradientPink
        ]
    );
  }

}