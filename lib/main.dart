import 'package:flutter/material.dart';
import 'package:portfolio/homepage.dart';

void main() => runApp(const MyApp());
Color myPrimaryColor = const Color(0xff0a192f);
Color myAccentColor = const Color(0xff5ce9ca);

ThemeData myTheme = ThemeData(
  primaryColor: myPrimaryColor,
  brightness: Brightness.dark,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: myTheme,
      home: const Homepage(),
    );
  }
}
