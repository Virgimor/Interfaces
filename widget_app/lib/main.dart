import 'package:flutter/material.dart';
import 'package:widget_app/config/router/app_router.dart';
import 'package:widget_app/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).theme(),
      title: 'Widgets App',
      routerConfig: appRouter,
        /*routes: {
          '/': (context) => const HomeScreen(),
          '/cards': (context) => const HomeScreen(),
          '/buttons': (context)  => const HomeScreen(),
        },*/
      );
  }
}