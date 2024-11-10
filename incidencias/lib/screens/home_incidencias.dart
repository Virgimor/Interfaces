import 'package:flutter/material.dart';
import 'package:incidencias/screens/pantalla_grande.dart';
import 'package:incidencias/screens/pantalla_mediana.dart';
import 'package:incidencias/screens/pantalla_peque.dart';


class HomeIncidencias extends StatelessWidget {

  static const String name = 'home_incidencias';

  const HomeIncidencias({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Incidencias"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions:[
          Container(
            padding: const EdgeInsets.all(9.0),
            child: const CircleAvatar(backgroundImage: NetworkImage('assets/images/flork.png'),)
          )
        ], 
      ),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
        if(constraints.maxWidth> 1900){
          return const PantallaGrande();
        } else if(constraints.maxWidth>1500){
          return const PantallaMediana();
        } else{
          return const PantallaPeque();
        }
       },
      )
    );
  }
}








  