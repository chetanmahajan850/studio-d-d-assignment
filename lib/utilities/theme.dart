import 'package:flutter/material.dart';
import 'package:studio_d_d_assignment/utilities/size_config.dart';

import 'app_colors.dart';

class AppThemes {
  // ====================================================================================
  //                                      Light Theme
  // ====================================================================================

  static const Color cursorColor = AppColors.primary;

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.lightBackground,
    fontFamily: 'Merriweather Sans',
    dialogBackgroundColor: AppColors.lightBackground,
    canvasColor: AppColors.lightBackground,
    primaryColor: AppColors.primary,
    inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        isDense: true),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      background: AppColors.white,
      surface: AppColors.surfaceColorLight,
      onBackground: AppColors.white,
    ),
    appBarTheme: AppBarTheme(
      shadowColor: AppColors.primary,
      color: AppColors.primary,
      elevation: 0,
      iconTheme: const IconThemeData(
        color: AppColors.iconLight,
      ),
      titleTextStyle: const TextTheme(
        displayLarge: TextStyle(
          color: AppColors.textLight,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ).displayLarge,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: AppColors.textLight,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: TextStyle(
        color: AppColors.textLight,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: AppColors.textLight,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: TextStyle(
        color: AppColors.textLight,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        color: AppColors.textLightSub,
        fontSize: 13,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: TextStyle(
        color: AppColors.textLight,
        fontSize: 15,
        fontWeight: FontWeight.normal,
      ),
      bodyLarge: TextStyle(
        color: AppColors.textLight,
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
    ),
    iconTheme: const IconThemeData(color: AppColors.iconLight),
    cardTheme: CardTheme(
      elevation: SizeConfig.cardElevation,
      color: AppColors.cardColorLight,
      shadowColor: AppColors.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
          foregroundColor: MaterialStateProperty.all(AppColors.white),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)))),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28))),
          backgroundColor: MaterialStateProperty.all(AppColors.secondaryColor),
          foregroundColor: MaterialStateProperty.all(AppColors.white),
        )),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primary),
          foregroundColor: MaterialStateProperty.all(AppColors.white),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)))),
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: AppColors.primary,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    ),
    bottomSheetTheme:
    const BottomSheetThemeData(backgroundColor: AppColors.lightBackground),
    bottomAppBarTheme: const BottomAppBarTheme(color: AppColors.white),
    tabBarTheme: const TabBarTheme(
      labelColor: AppColors.white,
      unselectedLabelColor: AppColors.primaryDark,
      indicator: ShapeDecoration(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
          color: AppColors.primary
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.surfaceColorLight),
  );
}
