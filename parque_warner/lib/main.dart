import 'package:flutter/material.dart';
import 'package:parque_warner/config/router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(27, 32, 44, 1)),
      routerConfig: appRouter,
    );
  }
}