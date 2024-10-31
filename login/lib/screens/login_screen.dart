import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/providers/login_providers.dart';

class LoginScreen extends StatelessWidget {

  static const String name = 'login_screen';
  final loginProviders=LoginProviders();

  LoginScreen({super.key, this.usuario});
  final String? usuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bienvenido $usuario", style: const TextStyle(fontSize: 30)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: OutlinedButton(
              onPressed: (){
                context.go('/');
              }, 
              child: const Column(
                children: [
                  Text('Cerrar sesion', style: TextStyle(color: Colors.black, fontSize: 15, height: 2.0),),
                ],
              ),
            ),
          ),
        ]
      ),
      body: FutureBuilder(
        future: loginProviders.getUsuarios(), 
        builder: (context, snapshot){
          z
        }
      ),
    );
  }
}
