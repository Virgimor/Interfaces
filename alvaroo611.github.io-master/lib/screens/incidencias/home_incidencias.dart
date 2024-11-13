import 'package:flutter/material.dart';
import 'package:iseneca/screens/incidencias/pantalla_grande.dart';
import 'package:iseneca/screens/incidencias/pantalla_mediana.dart';
import 'package:iseneca/screens/incidencias/pantalla_peque.dart';


class HomeIncidencias extends StatelessWidget {

  static const String name = 'home_incidencias';

  const HomeIncidencias({super.key, String? usuario});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Incidencias"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
        if(constraints.maxWidth> 1900){
          return const PantallaGrande();
        } else if(constraints.maxWidth>1300){
          return const PantallaMediana();
        } else{
          return const PantallaPeque();
        }
       },
      )
    );
  }
}








  