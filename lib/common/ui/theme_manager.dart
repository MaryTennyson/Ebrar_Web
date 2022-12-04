import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData createTheme() {
    return ThemeData(
      backgroundColor: Color(0XFFFFFFFF),
      bottomAppBarColor: Color(0xFF273051),
      primaryColor: Color.fromARGB(255, 79, 94, 127),
      secondaryHeaderColor: Color(0xFF273051),
      hintColor: Color(0xFF7B92C2),
    );
  }
}
