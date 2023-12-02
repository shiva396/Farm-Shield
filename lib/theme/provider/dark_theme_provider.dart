import 'package:farmshield/theme/models/dark_theme_preference.dart';
import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreferences darkThemePreferences = DarkThemePreferences();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;

  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePreferences.setDarkTheme(value);
    notifyListeners();
  }
}

class LanguageProvider with ChangeNotifier {
  LanguagePreferences languagePreferences = LanguagePreferences();
  String _darkTheme = "en";
  String get getDarkTheme => _darkTheme;

  set setDarkTheme(String value) {
    _darkTheme = value;
    languagePreferences.setDarkTheme(value);
    notifyListeners();
  }
}
