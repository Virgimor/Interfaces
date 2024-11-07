import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart'; // new
import 'package:flutter/material.dart';
import 'package:login_google/providers/login_providers.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class AuthGate extends StatelessWidget {
 const AuthGate({super.key});

 @override
 Widget build(BuildContext context) {
  final loginProvider = context.watch<LoginProviders>();
  
   return StreamBuilder<User?>(
     stream: FirebaseAuth.instance.authStateChanges(),
     builder: (context, snapshot) {
       if (!snapshot.hasData) {
         return SignInScreen(
           providers: [
            //Este campo es el de nombre y la contraseña
             EmailAuthProvider(),
             GoogleProvider(clientId: "977985404324-r80fopluvtggk5mhnpldm9qc6q8n8ai3.apps.googleusercontent.com"),  // new
           ],
           headerBuilder: (context, constraints, shrinkOffset) {
             return const Padding(
               padding: EdgeInsets.all(20),
               child: AspectRatio(
                 aspectRatio: 1,
                 
               ),
             );
           },
           subtitleBuilder: (context, action) {
             return Padding(
               padding: const EdgeInsets.symmetric(vertical: 8.0),
               child: action == AuthAction.signIn
                   ? const Text('Welcome to FlutterFire, please sign in!')
                   : const Text('Welcome to Flutterfire, please sign up!'),
             );
           },
           footerBuilder: (context, action) {
             return const Padding(
               padding: EdgeInsets.only(top: 16),
               child: Text(
                 'By signing in, you agree to our terms and conditions.',
                 style: TextStyle(color: Colors.grey),
               ),
             );
           },
           sideBuilder: (context, shrinkOffset) {
             return const Padding(
               padding: EdgeInsets.all(20),
               child: AspectRatio(
                 aspectRatio: 1,
                 
               ),
             );
           },
         );
       }
      //loginProvider.usuario.add(loginProvider.usu);
      loginProvider.getUsuarios();
      print(loginProvider.getUsuarios());
      if(loginProvider.usuario.any((element) => element.nombre==FirebaseAuth.instance.currentUser?.email)){
        return const HomeScreen();
      } else{
        return const Scaffold(
          body: Center(
            child: Text("No está autorizado a ver esta página")
          ),
        );
      }
     },
   );
 }
}