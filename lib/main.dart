import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/HomeScreen.dart';
import 'package:oxe_backing/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        brightness: Brightness.light,
        // colorScheme: ColorScheme.light();
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 75, 74, 74),
        brightness: Brightness.light,
        // colorScheme: ColorScheme.light();
      ),
      home: const Login(),
    );
  }
}
