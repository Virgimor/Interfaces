import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {

  static const String name = 'login_screen';

  const LoginScreen({super.key, required this.usuario});
  final String usuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bienvenido $usuario"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: OutlinedButton(onPressed: (){
            context.pop();
                    }, 
                    child: const Text('Cerrar sesion'),),
          ),
        ]
      ),
    );
  }
}