import 'package:flutter/material.dart';
import 'package:login/config/themes/app_themes.dart';
import 'package:login/providers/login_providers.dart';
import 'package:login/router/app_router.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_)=> LoginProviders()..getUsuarios())
      ],
      child: MaterialApp.router(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 4).theme(),
        routerConfig: appRouter,
      ),
    );
  }
}