import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static const Color blackPearl = Color.fromRGBO(30, 31, 43, 1);
  static const Color brinkPink = Color.fromRGBO(255, 97, 136, 1);
  //the dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark, //prefix icon color form input on focus
    fontFamily: font1,
    scaffoldBackgroundColor: _darkBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _darkPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _darkBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _darkTextColor),
      toolbarTextStyle: _darkTextTheme.bodyText2,
      titleTextStyle: _darkTextTheme.headline6,
    ),
    snackBarTheme: const SnackBarThemeData(
        contentTextStyle: TextStyle(color: Colors.white),
        backgroundColor: _darkBackgroundAlertColor,
        actionTextColor: _darkBackgroundActionTextColor),
    iconTheme: const IconThemeData(
      color: _darkIconColor, //_darkIconColor,
    ),
    popupMenuTheme: const PopupMenuThemeData(color: _darkBackgroundAppBarColor),
    textTheme: _darkTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: _darkPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _darkPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      prefixStyle: TextStyle(color: _darkIconColor),
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _darkBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _darkInputFillColor,
    ),
    colorScheme: const ColorScheme.dark(
      primary: _darkPrimaryColor,
    ).copyWith(secondary: _darkPrimaryColor),
  );

  static const Color dodgerBlue = Color.fromRGBO(29, 161, 242, 1);
  static const Color ebonyClay = Color.fromRGBO(40, 42, 58, 1);
  static String font1 = 'ProductSans';
  static String font2 = 'Roboto';
  static const Color juneBud = Color.fromRGBO(186, 215, 97, 1);
  //the light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    fontFamily: font1,
    scaffoldBackgroundColor: _lightBackgroundColor,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: _lightPrimaryColor,
    ),
    appBarTheme: AppBarTheme(
      color: _lightBackgroundAppBarColor,
      iconTheme: const IconThemeData(color: _lightTextColor),
      toolbarTextStyle: _lightTextTheme.bodyText2,
      titleTextStyle: _lightTextTheme.headline6,
    ),
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
    ),
    snackBarTheme: const SnackBarThemeData(
        backgroundColor: _lightBackgroundAlertColor,
        actionTextColor: _lightBackgroundActionTextColor),
    iconTheme: const IconThemeData(
      color: _lightIconColor,
    ),
    popupMenuTheme:
        const PopupMenuThemeData(color: _lightBackgroundAppBarColor),
    textTheme: _lightTextTheme,
    buttonTheme: ButtonThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        buttonColor: _lightPrimaryColor,
        textTheme: ButtonTextTheme.primary),
    unselectedWidgetColor: _lightPrimaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(
          borderSide: BorderSide(width: 1.0),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderActiveColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: _lightBorderErrorColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      fillColor: _lightBackgroundSecondaryColor,
    ),
  );

  static const Color nevada = Color.fromRGBO(105, 109, 119, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color whiteLilac = Color.fromRGBO(248, 250, 252, 1);

  static const Color _darkAlertTextColor = Colors.black;
  static const Color _darkBackgroundActionTextColor = white;
  static const Color _darkBackgroundAlertColor = blackPearl;
  static const Color _darkBackgroundAppBarColor = _darkPrimaryColor;
  //Background Colors
  static const Color _darkBackgroundColor = ebonyClay;

  static const Color _darkBackgroundErrorColor =
      Color.fromRGBO(255, 97, 136, 1);

  static const Color _darkBackgroundSecondaryColor =
      Color.fromRGBO(0, 0, 0, .6);

  static const Color _darkBackgroundSuccessColor =
      Color.fromRGBO(186, 215, 97, 1);

  static const Color _darkBorderActiveColor = _darkPrimaryColor;
  //Border Color
  static const Color _darkBorderColor = nevada;

  static const Color _darkBorderErrorColor = brinkPink;
  //Icon Color
  static const Color _darkIconColor = nevada;

  static const Color _darkInputFillColor = _darkBackgroundSecondaryColor;
  //constants color range for dark theme
  static const Color _darkPrimaryColor = dodgerBlue;

  //Text Colors
  static const Color _darkTextColor = Colors.white;

  static const Color _darkTextSecondaryColor = Colors.black;
  static const TextTheme _darkTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 20.0, color: _darkTextColor),
    bodyText1: TextStyle(fontSize: 16.0, color: _darkTextColor),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.grey),
    button: TextStyle(
        fontSize: 15.0, color: _darkTextColor, fontWeight: FontWeight.w600),
    headline6: TextStyle(fontSize: 16.0, color: _darkTextColor),
    subtitle1: TextStyle(fontSize: 16.0, color: _darkTextColor),
    caption: TextStyle(fontSize: 12.0, color: _darkBackgroundAppBarColor),
  );

  static const Color _lightAlertTextColor = Colors.black;
  static const Color _lightBackgroundActionTextColor = white;
  static const Color _lightBackgroundAlertColor = blackPearl;
  static const Color _lightBackgroundAppBarColor = _lightPrimaryColor;
  //Background Colors
  static const Color _lightBackgroundColor = whiteLilac;

  static const Color _lightBackgroundErrorColor = brinkPink;
  static const Color _lightBackgroundSecondaryColor = white;
  static const Color _lightBackgroundSuccessColor = juneBud;
  static const Color _lightBorderActiveColor = _lightPrimaryColor;
  //Border Color
  static const Color _lightBorderColor = nevada;

  static const Color _lightBorderErrorColor = brinkPink;
  //Icon Color
  static const Color _lightIconColor = nevada;

  //form input colors
  static const Color _lightInputFillColor = _lightBackgroundSecondaryColor;

  //constants color range for light theme
  //main color
  static const Color _lightPrimaryColor = dodgerBlue;

  //Text Colors
  static const Color _lightTextColor = Colors.black;

  static const Color _lightTextSecondaryColor = Colors.black;
  //text theme for light theme
  static const TextTheme _lightTextTheme = TextTheme(
    headline1: TextStyle(fontSize: 20.0, color: _lightTextColor),
    bodyText1: TextStyle(fontSize: 16.0, color: _lightTextColor),
    bodyText2: TextStyle(fontSize: 14.0, color: Colors.grey),
    button: TextStyle(
        fontSize: 15.0, color: _lightTextColor, fontWeight: FontWeight.w600),
    headline6: TextStyle(fontSize: 16.0, color: _lightTextColor),
    subtitle1: TextStyle(fontSize: 16.0, color: _lightTextColor),
    caption: TextStyle(fontSize: 12.0, color: _lightBackgroundAppBarColor),
  );
}
