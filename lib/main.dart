import 'package:flutter/material.dart';
import 'package:projects/pages/forex_page.dart';
import 'package:projects/pages/forex_rate_display.dart';
import 'package:projects/pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}
