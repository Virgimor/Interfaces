import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {

  static const String name = 'login_screen';

  const LoginScreen({super.key, this.usuario});
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
    );
  }
}

class _ControlledProgresIndicator extends StatelessWidget {
  const _ControlledProgresIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic( const Duration( milliseconds: 300 ), (value) {
        return (value * 2) / 100; // 0.0, 1.0

      }).takeWhile((value) => value < 1 ),

      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator( value: progressValue, strokeWidth: 2, backgroundColor: Colors.black12, ),
              const SizedBox(width: 20,),

              Expanded(
                child: LinearProgressIndicator(value: progressValue ),


              ),
              Text("$progressValue")

            ],
          ),
        );

      },
    );
  }
}