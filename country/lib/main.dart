import 'package:country/screens/screen_bandera.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Banderas',
        debugShowCheckedModeBanner: false,
        home: ScreenBandera()
    );
  }
}