import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/discover/discover_screen.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(
          //lazy:false,
          create: (_) => DiscoverProvider()..loadNextPage())
      ],
      child: MaterialApp(
        theme: AppTheme().getTheme(),
        title: 'TOK TIK',
        home: const DiscoverScreen()   //aqui unimos el main con la clase discover_screen.dart
      ),
    );
  }
}