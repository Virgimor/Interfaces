import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textControllerUser = TextEditingController();
    final textControllerPass = TextEditingController();

    return Builder(
      builder: (context){
        return Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                SizedBox(
                  width: 150,
                  child: TextFormField(
                    controller: textControllerUser,
                    decoration: const InputDecoration(
                      hintText: 'Nombre usuario'
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  child: TextFormField(
                    controller: textControllerPass,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: 'Contraseña'
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(onPressed: (){
                    if(textControllerUser.text=='Usuario' && textControllerPass.text=='usuario'){
                      context.pushNamed(LoginScreen.name);
                    }
                  }, 
                  child: const Text('Entrar')),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}