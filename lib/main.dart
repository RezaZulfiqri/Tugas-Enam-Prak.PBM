import 'package:flutter/material.dart';
import 'package:prakenam/home_page.dart';
import 'package:prakenam/login_page.dart';
import 'package:prakenam/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const LoginPage(),
    );
  }
}
