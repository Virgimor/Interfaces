import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:incidencias/providers/incidencias_providers.dart';
import 'package:provider/provider.dart';

class PantallaPeque extends StatefulWidget{
  const PantallaPeque({super.key});

  @override
  State<PantallaPeque> createState() => _PantallaPeque();
}

class _PantallaPeque extends State<PantallaPeque>{

  TextEditingController textControllerFecha = TextEditingController();
   var textControllerNumeroAula = TextEditingController();
    var textControllerNombreProfesor = TextEditingController();
    var textControllerDescripcion = TextEditingController();

@override
  void initState() {
    super.initState();
    final IncidenciasProviders listaProvider=IncidenciasProviders();
    listaProvider.getIncidencias();
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;    
    final IncidenciasProviders listaProvider=Provider.of<IncidenciasProviders>(context);

    return Column(
        children: [
          const SizedBox(height: 20,),
          // Boton para ver más incidencias
          Row(
            mainAxisAlignment: MainAxisAlignment.end,   
            children: [
              FilledButton.tonal(
                onPressed: () {
                  listaProvider.getIncidencias();
                  popUp(context);
                }, 
                child: const Text("Listado de incidencias", style: TextStyle(color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.all(9.0)),
            ],
          ),
          // Contenedor con el formulario
          const SizedBox(height: 20,),
          Container(
            width: size.width * 0.8,
            height: size.height * 0.45,
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 252, 252, 252)
            ),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.fromLTRB(20, 15, 20, 0)),
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
                        controller: textControllerNombreProfesor,
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
                            controller: textControllerNumeroAula,
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
                            controller: textControllerFecha,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.calendar_month_outlined),
                              filled: true,
                              fillColor: Color.fromARGB(255, 240, 239, 239)
                            ),
                            readOnly: true,
                            onTap: (){
                              seleccionarFecha(context);
                            },
                          )
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
                            controller: textControllerDescripcion,
                            decoration:const InputDecoration(
                              border: OutlineInputBorder(),
                              filled: true,
                              fillColor: Color.fromARGB(255, 240, 239, 239),
                            ),
                          ),
                        ],
                      ),
                    ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,   
                children: [
                  FilledButton.tonal(
                    onPressed: () {
                      IncidenciasProviders().crearIncidencias(textControllerNumeroAula.text, textControllerNombreProfesor.text, textControllerFecha.text, textControllerDescripcion.text);
                      listaProvider.getIncidencias();
                    }, 
                    child: const Text("Crear incidencias", style: TextStyle(color: Colors.black),),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 80, 0, 0)),
                ],
              ),
            ],
          )
          )
        ],
      );
  }

  //costante para cambiar el estilo de los textos
  static const TextStyle stylo = TextStyle(
    fontSize: 20.0
  );

  void popUp(BuildContext context){
    
    final size = MediaQuery.of(context).size;
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text("Listado de incidencias", textAlign: TextAlign.center,),
        
        content: SingleChildScrollView(
          child: Consumer<IncidenciasProviders>(builder: (context, value, child) {
            return SizedBox(
              height: size.height * 0.7,
              width: size.width * 0.7,
              child: ListView.builder(
                itemCount: value.incidencias.length,
                itemBuilder: (context, index){
                  final incidencia = value.incidencias[index];
                  return ListBody(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20),
                          ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 15),
                          child: DefaultTextStyle(
                            style: stylo,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Número de incidencias: ${incidencia.id}"),
                                Text("Número de aula: ${incidencia.numeroAula}"),
                                Text("Nombre del profesor: ${incidencia.nombreProfesor}"),
                                Text("Fecha: ${incidencia.fechaActual}"),
                                Text("Descripcion: ${incidencia.descripcionIncidencia}",),
                                if(incidencia.status == "Pendiente")
                                  Text("Estado: ${incidencia.status}", style: const TextStyle(color: Colors.red),),
                              ],
                            ),
                          )
                        )
                      ),
                    ], 
                  );
                }
              ),
            );
          },
          )
        ),
        actions: [
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text("Salir")),
        ],
      )
    );
  }
  Future<void> seleccionarFecha(BuildContext context) async{
        DateTime? datetime = await showDatePicker(
          context: context, 
          firstDate: DateTime(1950), 
          initialDate: DateTime.now(),
          lastDate: DateTime(2100));

          if(datetime!=null){
            //String formatterDate = DateFormat('yyyy-MM-dd').format(datetime);

            setState(() {
              textControllerFecha.text=datetime.toString().split(" ")[0];
            });
          }
      }
}