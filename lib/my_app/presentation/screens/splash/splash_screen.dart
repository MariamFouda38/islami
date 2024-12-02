import 'package:flutter/material.dart';
import 'package:islami_app/my_app/core/asets_manager.dart';
import 'package:islami_app/my_app/core/routes_manager.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, RoutesManager.HomeName as Route<Object?>);
    });
    return Scaffold(
      body: Image.asset(AssetsManager.LightSplash,
          width: double.infinity, height: double.infinity, fit: BoxFit.fill),
    );
  }
}
