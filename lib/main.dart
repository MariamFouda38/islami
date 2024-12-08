import 'package:flutter/material.dart';

import 'my_app/my_app.dart';
import 'my_app/providers/language_provider.dart';
import 'my_app/providers/theme_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ThemeProvider()..getTheme(),
    ),
    ChangeNotifierProvider(
      create: (context) => LanguageProvider()..getLanguage(),
    )
  ], child: const MyApp()));
}
