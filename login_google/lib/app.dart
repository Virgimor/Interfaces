import 'package:flutter/material.dart';
import 'package:login_google/providers/login_providers.dart';
import 'package:provider/provider.dart';
import 'auth_gate.dart';

class MyApp extends StatelessWidget {
 const MyApp({super.key});
 @override
 Widget build(BuildContext context) {
   return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        lazy:false,
        create: (_)=> LoginProviders()..getUsuarios())
    ],
     child: MaterialApp(
       theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
       home: const AuthGate(),
     ),
   );
 }
}
