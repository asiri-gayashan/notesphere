import 'package:flutter/material.dart';
import 'package:notesphere/utils/colors.dart';

class ThemeClass {
  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().primaryColor,
    scaffoldBackgroundColor: AppColors.BgColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.WhiteColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.BgColor,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.WhiteColor),
    ),

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.FAbtn,
    ),
  );
}
