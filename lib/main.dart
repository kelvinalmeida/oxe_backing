import 'package:flutter/material.dart';
import 'package:oxe_backing/screens/login-cadastro/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
  fetch();
  runApp(const MyApp());
}

void fetch() async {
  var url = Uri.http('dummyjson.com', 'products/1');
  var response = await http.get(url);
  // var mapOfJason = deco
  if (response.statusCode < 400) {
    var jsonResponse =
        convert.jsonDecode(response.body) as Map<dynamic, dynamic>;
    print(jsonResponse);
  }
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
