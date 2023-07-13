import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  static BorderRadius appBorderRadius = BorderRadius.circular(30.r);
  static BorderRadius inputFieldBorderRadius = BorderRadius.circular(10.r);
  static double buttonWidth = 160.w;
  static double buttonHeight = 52.h;
  static double selectHeight = 40.h;

  static const kcBackgroundColor = Color(0xFF222222);
  static const kcPrimaryColor = Color(0xFF0A70FF);
  static const kcErrorColor = Color(0xFFE10000);
  static const kcOrangeColor = Color(0xFFFF7644);
  static const kcSuccessColor = Color(0xFF0AAD0A);
  static const kcWarningColor = Color(0xFFFF7009);
  static const kcBlackColor = Color(0xFF222222);
  static const kcGrayColor = Color(0xFF393938);
  static const kcLightGrayColor = Color(0xFF717171);
  static const kcWhiteColor = Color(0xFFFFFFFF);
  static const kcAccentBlue = Color(0xFF32CBFF);
  static const kcBlueZone = Color(0xFF32CBFF);
  static const kcYellowColor = Color(0xFFFFCB45);

  static const kcPrimaryColorCode = 0xFF0A70FF;
  static const String fontFamily1 = 'DMSans';

  //input background colors
  static const lightGrayColor = Color(0xFFF7F7F7);
  static const darkGrayColor = Color(0xFF222222);

  static const MaterialColor primarySwatch = MaterialColor(
    kcPrimaryColorCode,
    <int, Color>{
      50: Color(kcPrimaryColorCode),
      100: Color(kcPrimaryColorCode),
      200: Color(kcPrimaryColorCode),
      300: Color(kcPrimaryColorCode),
      400: Color(kcPrimaryColorCode),
      500: Color(kcPrimaryColorCode),
      600: Color(kcPrimaryColorCode),
      700: Color(kcPrimaryColorCode),
      800: Color(kcPrimaryColorCode),
      900: Color(kcPrimaryColorCode),
    },
  );

  static final darkTheme = ThemeData(
      brightness: Brightness.dark,
      primaryColor: kcPrimaryColor,
      fontFamily: fontFamily1,
      colorScheme: const ColorScheme(
        background: kcBackgroundColor,
        brightness: Brightness.dark,
        primary: kcPrimaryColor,
        secondary: kcPrimaryColor,
        surface: kcWhiteColor,
        error: kcErrorColor,
        onPrimary: kcBackgroundColor,
        onSecondary: kcBackgroundColor,
        onSurface: kcBackgroundColor,
        onError: kcBackgroundColor,
        onBackground: kcWhiteColor,
      ),
      cardColor: darkGrayColor,
      primarySwatch: primarySwatch,
      canvasColor: kcBackgroundColor,
      inputDecorationTheme: InputDecorationTheme(
        fillColor: darkGrayColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kcPrimaryColor, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kcErrorColor, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kcPrimaryColor, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
      ),
      tabBarTheme: const TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        dividerColor: kcPrimaryColor,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 2.5,
            color: kcPrimaryColor,
          ),
        ),
        labelColor: kcWhiteColor,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        indicatorColor: kcPrimaryColor,
      ),
      snackBarTheme: const SnackBarThemeData(
        actionTextColor: kcWhiteColor,
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: kcBackgroundColor),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: kcBackgroundColor,
        selectedItemColor: kcPrimaryColor,
        unselectedItemColor: kcGrayColor,
        elevation: 0,
      ),
      scaffoldBackgroundColor: kcBackgroundColor,
      appBarTheme: const AppBarTheme(backgroundColor: kcBackgroundColor),
      textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 28.h,
              fontWeight: FontWeight.bold,
              fontFamily: fontFamily1,
              color: kcWhiteColor),
          displayMedium: TextStyle(
              fontSize: 28.h,
              fontWeight: FontWeight.bold,
              fontFamily: fontFamily1,
              color: kcWhiteColor),
          displaySmall: TextStyle(
              fontSize: 18.h,
              fontWeight: FontWeight.bold,
              fontFamily: fontFamily1,
              color: kcGrayColor),
          bodyLarge: TextStyle(fontSize: 16.h, fontFamily: fontFamily1),
          bodyMedium: TextStyle(
              fontSize: 16.h, fontFamily: fontFamily1, color: kcGrayColor)));

  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: kcPrimaryColor,
      fontFamily: fontFamily1,
      colorScheme: const ColorScheme(
          background: kcWhiteColor,
          brightness: Brightness.light,
          primary: kcPrimaryColor,
          secondary: kcPrimaryColor,
          surface: kcWhiteColor,
          error: kcErrorColor,
          onPrimary: kcWhiteColor,
          onSecondary: kcWhiteColor,
          onSurface: kcWhiteColor,
          onError: kcWhiteColor,
          onBackground: kcGrayColor),
      primarySwatch: primarySwatch,
      cardColor: kcLightGrayColor,
      canvasColor: kcWhiteColor,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        selectedItemColor: kcPrimaryColor,
        unselectedItemColor: kcGrayColor,
        elevation: 0,
      ),
      snackBarTheme: const SnackBarThemeData(
        actionTextColor: kcBlackColor,
      ),
      tabBarTheme: const TabBarTheme(
        indicatorSize: TabBarIndicatorSize.label,
        dividerColor: kcPrimaryColor,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            width: 2.5,
            color: kcPrimaryColor,
          ),
        ),
        labelColor: kcBlackColor,
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        indicatorColor: kcPrimaryColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: lightGrayColor,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kcPrimaryColor, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kcErrorColor, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: kcPrimaryColor, width: 1.0),
          borderRadius: inputFieldBorderRadius,
        ),
      ),
      bottomSheetTheme:
          const BottomSheetThemeData(backgroundColor: kcWhiteColor),
      scaffoldBackgroundColor: kcWhiteColor,
      appBarTheme: const AppBarTheme(backgroundColor: kcWhiteColor),
      textTheme: TextTheme(
        displayLarge: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.bold,
            color: kcBlackColor,
            fontFamily: fontFamily1),
        displayMedium: TextStyle(
            fontSize: 28.h,
            fontWeight: FontWeight.bold,
            fontFamily: fontFamily1,
            color: kcBlackColor),
        displaySmall: TextStyle(
            fontSize: 20.h,
            fontWeight: FontWeight.bold,
            fontFamily: fontFamily1,
            color: kcGrayColor),
        bodyLarge: TextStyle(fontSize: 16.h, fontFamily: fontFamily1),
        bodyMedium: TextStyle(fontSize: 16.h, fontFamily: fontFamily1),
      ));
}
