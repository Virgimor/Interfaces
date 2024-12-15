import 'package:flutter/material.dart';
import 'package:iseneca/screens/incidencias/pantalla_grande.dart';
import 'package:iseneca/screens/incidencias/pantalla_mediana.dart';
import 'package:iseneca/screens/incidencias/pantalla_peque.dart';


class HomeIncidencias extends StatefulWidget {

  static const String name = 'home_incidencias';

  const HomeIncidencias({super.key, String? usuario});

  @override
  State<HomeIncidencias> createState() => _HomeIncidenciasState();
}

class _HomeIncidenciasState extends State<HomeIncidencias> {

  late Future<String> usuario;
 @override
void initState() {
  super.initState();
  Future<String> fetchData() async {
    await Future.delayed(const Duration(seconds: 5));
    return "Estoy cargado";
  }
  usuario=fetchData();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Incidencias"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder(
        future: usuario,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          List<Widget> children;
          if (snapshot.connectionState == ConnectionState.waiting) {
              children = const <Widget>[
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Text('Cargando...'),
                ),
              ];
              // Si tiene datos el snapshot es lo que muestra
            } else if (snapshot.hasData) {
              children = <Widget>[
                //aqui tengo que meter lo que me de
                LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) { 
                  if(constraints.maxWidth> 1900){
                    return const PantallaGrande();
                  } else if(constraints.maxWidth>1300){
                    return const PantallaMediana();
                  } else{
                    return const PantallaPeque();
                  }
                },
                ),
              ];
            } else {
              children = const <Widget>[
                Text('Esperando...'),
              ];
            }
          return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            );
        },
      )
    );
  }
}








  