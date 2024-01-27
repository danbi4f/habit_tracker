import 'package:flutter/material.dart';
import 'package:habit_tracker/theme/dark_mode.dart';
import 'package:habit_tracker/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // initilly, light mode
   ThemeData _themeData = lightMode;

  // get current theme
  ThemeData get getThemeData => _themeData;

  // is current theme dark mode
  bool get isDarkMode => _themeData == darkMode;

  // set theme
  set setThemeData(ThemeData themeData){
    _themeData = themeData;
    // update UI
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightMode){
      setThemeData = darkMode;
    } else {
      setThemeData = lightMode;
    }
  }
}
