import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/login_screen.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textControllerUser = TextEditingController();
    final textControllerPass = TextEditingController();
    final colors = Theme.of(context).colorScheme;
    final ticke = TickerProviderStateMixin();

    return Builder(
      builder: (context){
        return Scaffold(
          body: AnimatedBackground(
            behaviour: RandomParticleBehaviour(
              options: const ParticleOptions(
                spawnMaxRadius: 40,
                spawnMinSpeed: 15,
                particleCount: 80,
                spawnMaxSpeed: 50,
                spawnOpacity: 0.8,
                baseColor: Colors.blue,
              ),
            ),
            vsync: ticke,
            child: Padding(
              padding: const EdgeInsets.all(120.0),
              child: Column(
                children: [
                  Card(
                    color: colors.surfaceContainerHigh,
                    child: SizedBox(
                      height: 400,
                      width: 350,
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 45),
                            child: Text("Login", style: TextStyle(fontSize: 35.0),),
                          ),
                          SizedBox(
                            width: 260,
                            child: TextFormField(
                              controller: textControllerUser,
                              decoration: const InputDecoration(
                                hintText: 'Nombre usuario',
                                border: OutlineInputBorder()
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
                                  hintText: 'Contraseña',
                                  border: OutlineInputBorder()
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25),
                            child: ElevatedButton(onPressed: (){
                              if(textControllerUser.text=='Usuario' && textControllerPass.text=='usuario'){
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>LoginScreen(usuario:textControllerUser.text))
                                  );
                              } else{
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
                            child: const Text('Entrar')),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}