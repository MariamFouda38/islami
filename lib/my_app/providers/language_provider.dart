import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  String currentLang = 'en';

  void changeAppLang(String newLang) {
    if (newLang == currentLang) return;
    currentLang = newLang;
    notifyListeners();
  }

  Future<void> saveLanguage(String Language) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (Language == 'en') {
      prefs.setString('Language', 'en');
    } else {
      prefs.setString('Language', 'ar');
    }
  }

  Future<void> getLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String Language = prefs.getString('Language') ?? 'en';
    if (Language == 'en') {
      currentLang = 'en';
    } else {
      currentLang = 'ar';
    }
  }
}
