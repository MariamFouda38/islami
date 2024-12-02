import 'package:flutter/material.dart';
import 'package:islami_app/my_app/config/theme/my_theme.dart';
import 'package:islami_app/my_app/core/routes_manager.dart';
import 'package:islami_app/my_app/presentation/screens/splash/splash_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      routes: {RoutesManager.SplashName: (_) => SplashScreen()},
      initialRoute: RoutesManager.SplashName,
    );
  }
}
