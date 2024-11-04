import 'package:flutter/material.dart';

class HomeIncidencias extends StatelessWidget {
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
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                onPressed: () {
                  
                }, 
                child: const Text("Listado de incidencias", style: TextStyle(color: Colors.black),),
              ),
              const Padding(
                padding: EdgeInsets.all(9.0)),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(250, 20, 250, 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                ),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0)),
                  const Text("Nueva incidencia",  style: TextStyle(fontSize: 20),),
                  //Primer campo que ya relleno con el nombre del usuario
                  SizedBox(
                    width: 900,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Nombre del profesor"),
                          TextFormField(
                            decoration:const InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color.fromARGB(255, 253, 250, 248)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      //Segundo campo numero de aula
                      SizedBox(
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Numero de aula"),
                              TextFormField(
                                decoration:const InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 253, 250, 248)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Tercer campo fecha en la que se detecta la incidencia
                      SizedBox(
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(60, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Fecha incidencia"),
                              TextFormField(
                                decoration:const InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 253, 250, 248)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 900,
                        child: Padding(
                          padding:  const EdgeInsets.fromLTRB(20, 10, 20, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Descripción de la incidencia"),
                              TextFormField(
                                decoration:const InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 253, 250, 248)
                                ),
                              ),
                            ],
                          ),
                        ),
                  )
                ],
              )
              ),
            ),
          )
        ],
      ),
    );
  }
}