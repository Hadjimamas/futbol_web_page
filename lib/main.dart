import 'package:flutter/material.dart';
import 'package:futbol_web_page/app_theme.dart';
import 'package:futbol_web_page/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Futbol - Cyprus Livescore',
      theme: getAppTheme(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
