import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_google/firebase_options.dart';
import 'package:login_google/providers/login_providers.dart';
import 'package:provider/provider.dart';
import 'auth_gate.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );


 runApp(const MyApp());
}

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