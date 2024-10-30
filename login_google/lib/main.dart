import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_google/app.dart';
import 'package:login_google/firebase_options.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp(
   options: DefaultFirebaseOptions.currentPlatform,
 );


 runApp(const MyApp());
}