import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChartProvider())
      ],
    child: MaterialApp(
      theme: AppTheme(selectedColor: 4).theme(),
      title: 'Yes No App',
      debugShowCheckedModeBanner: false, //para quitar la pegatina de la esquina derecha
      // home: Scaffold(
      //   appBar: AppBar(
      //     centerTitle: true,
      //     title: const Text('Yes No App'),
      //   ),
      //   body: Center(
      //     child: FilledButton.tonal(onPressed: (){
      //     },
      //     child: const Text('Click Me!!!'),),
      //   ),
      // ),
      home: const ChatScreen(),
    )
    );
  }
}