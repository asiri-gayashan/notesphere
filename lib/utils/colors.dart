import 'package:flutter/material.dart';

class AppColors {
  static Color BgColor = const Color(0xff202326);
  static Color FAbtn = const Color.fromARGB(255, 284, 17, 237);
  static Color card = const Color(0xff2f3225);
  static Color WhiteColor = Colors.white;

  static const int gradientStart = 0xff01f0ff;
  static const int gradientEnd = 0xff4441ed;

  LinearGradient primaryGradient = const LinearGradient(
    colors: [Color(gradientStart), Color(gradientEnd)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}
