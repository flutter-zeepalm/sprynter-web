import 'package:flutter/material.dart';
import 'package:spryntr/Utils/colors.dart';

class CustomTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: CustomColors.kBackgroundColor,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: CustomColors.kBackgroundColor,
    drawerTheme: DrawerThemeData(
      backgroundColor: CustomColors.kBackgroundColor,
    ),
    // textTheme: GoogleFonts.vigaTextTheme(),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.transparent),
  );
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.black,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.black,
    drawerTheme: const DrawerThemeData(
      backgroundColor: Colors.black,
    ),
    colorScheme: const ColorScheme.dark(),
  );
}
