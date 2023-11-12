import 'package:flutter/material.dart';
import 'package:hungry_hub/Pages/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(), // Set HomeScreen as the initial route
      },
    );
  }
}
