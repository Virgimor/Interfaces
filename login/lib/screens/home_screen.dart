import 'dart:ui';

import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login/providers/login_providers.dart';
import 'package:login/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {

    final textControllerUser = TextEditingController();
    final textControllerPass = TextEditingController();
    final loginProviders = LoginProviders();
    bool encontrado=false;
    
    return Builder(
      builder: (context){
        return Scaffold(
          body: AnimatedBackground(
            behaviour: RandomParticleBehaviour(
              options: const ParticleOptions(
                spawnMaxRadius: 90, // radio del objeto
                spawnMinSpeed: 35, //  mínima velocidad a la que el objeto se mueve
                particleCount: 90, //  número de objetos en el fondo
                spawnMaxSpeed: 50, //  máxima velocidad a la que el objeto se mueve
                spawnOpacity: 0.5, //  opacidad del objeto
                baseColor: Color.fromARGB(151, 239, 172, 16),
              ),
            ),
            vsync: this,
            child: Padding(
              padding: const EdgeInsets.all(120.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(147, 31, 31, 31),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: SizedBox(
                    height: 400,
                    width: 350,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 45),
                          child: Text("Login", style: TextStyle(fontSize: 45.0, color: Colors.white),),
                        ),
                        SizedBox(
                          width: 260,
                          child: TextFormField(
                            controller: textControllerUser,
                            
                            decoration: const InputDecoration(
                              hintText: 'Nombre usuario',
                              prefixIcon: Icon(Icons.person),
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 260,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: TextFormField(
                              controller: textControllerPass,
                              obscureText: true,
                              decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                hintText: 'Contraseña',
                                border: OutlineInputBorder(),
                                filled: true,
                                fillColor: Colors.white
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30),
                          child: SizedBox(
                            width: 120,
                            height: 50,
                            child: OutlinedButton(
                              style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(Colors.white)
                              ),
                              onPressed: () async {
                              await loginProviders.getUsuarios();
                              for(int i =0; i<loginProviders.usuarios.length; i++) {
                                
                                if(textControllerUser.text==loginProviders.usuarios[i].nombre && textControllerPass.text==loginProviders.usuarios[i].clave){
                                  encontrado=true;
                                  context.goNamed(LoginScreen.name, pathParameters:{"usuario":textControllerUser.text});
                                } 
                              }
                              if(!encontrado) {
                                showDialog(
                                  context: context, 
                                  builder: (context){
                                  return const AlertDialog(
                                    content: Text('Has introducido incorrectamente el nombre o la contraseña'),
                                    );
                                  }
                                );
                              }
                              
                            }, 
                            child: const Text('Entrar', style: TextStyle(fontSize: 18, color: Colors.black))),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
