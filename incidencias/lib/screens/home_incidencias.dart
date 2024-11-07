import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class HomeIncidencias extends StatefulWidget {

  static const String name = 'home_incidencias';

  const HomeIncidencias({super.key});

   @override
  State<HomeIncidencias> createState() => _HomeIncidenciasState();
}

  class _HomeIncidenciasState extends State<HomeIncidencias>{

    TextEditingController datePicker = TextEditingController();

    void popUp(BuildContext context){
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text("Listado de incidencias"),
        content: const SingleChildScrollView(
          child: Text("Aqui va la lista del provider")),
        actions: [
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text("Salir")),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    
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
          // Boton para ver más incidencias
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FilledButton.tonal(
                onPressed: () {
                  popUp(context);
                }, 
                child: const Text("Listado de incidencias", style: TextStyle(color: Colors.black),),
              ),
              const Padding(
                padding: EdgeInsets.all(9.0)),
            ],
          ),
          // Contenedor con el formulario
          const SizedBox(height: 10,),
          Container(
            width: size.width * 0.8,
            height: size.height * 0.7,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 252, 252, 252)
            ),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0)),
              const Text("Nueva incidencia",  style: TextStyle(fontSize: 20),),
              //Primer campo que ya relleno con el nombre del usuario
              SizedBox(
                width: size.width,
                
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
                          fillColor: Color.fromARGB(255, 240, 239, 239)
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
                    width: size.width *0.35,
                    
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Numero de aula"),
                          TextFormField(
                            decoration:const InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color.fromARGB(255, 240, 239, 239)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Tercer campo fecha en la que se detecta la incidencia
                  SizedBox(
                    width: size.width *0.37,
                    
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Fecha incidencia"),
                          TextField(
                            controller: datePicker,
                            decoration:const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.calendar_month_outlined),
                              filled: true,
                              fillColor: Color.fromARGB(255, 240, 239, 239)
                            ),
                            onTap: () async {
                              DateTime? datetime = await showDatePicker(
                                context: context, 
                                firstDate: DateTime(1950), 
                                initialDate: DateTime.now(),
                                lastDate: DateTime(2100));

                                if(datetime!=null){
                                  String formatterDate = DateFormat('yyyy-MM-dd').format(datetime);

                                  setState(() {
                                    datePicker.text=formatterDate;
                                  });
                                }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //Cuarto campo, descripcion de la incidencia
              SizedBox(
                width: size.width,
                
                    child: Padding(
                      padding:  const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Descripción de la incidencia"),
                          TextFormField(
                            decoration:const InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color.fromARGB(255, 240, 239, 239),
                              
                            ),
                          ),
                        ],
                      ),
                    ),
              )
            ],
          )
          )
        ],
      ),
    );
  }
}


  