import 'package:flutter/material.dart';
import 'package:parque_warner/screens/warner_beach_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(27, 32, 44, 1)),
      home: const Scaffold(
        body: WarnerBeachScreen(),
      ),
    );
  }
}