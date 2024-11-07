import 'package:flutter/material.dart';
import 'package:incidencias/router/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate],
      supportedLocales: const [ Locale('es')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 240, 239, 239)),
      routerConfig: appRouter,
      locale: const Locale('es'),
    );
  }
}