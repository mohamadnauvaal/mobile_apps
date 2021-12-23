import 'package:flutter/material.dart';
import 'package:mobile_apps/splash_page.dart';
import 'package:mobile_apps/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashScreenPage());
  }
}
