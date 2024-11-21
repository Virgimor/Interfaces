import 'package:flutter/material.dart';

class WarnerBeachScreen extends StatefulWidget {

static const String name = 'warner_beach_screen';

  const WarnerBeachScreen({super.key});

  @override
  State<WarnerBeachScreen> createState() => _WarnerBeachScreenState();
}

final ScrollController scrollController = ScrollController();
bool esVisible=true;

class _WarnerBeachScreenState extends State<WarnerBeachScreen> {

  @override
  void initState() {
    super.initState();
    
    scrollController.addListener((){
      final boton = scrollController.position.pixels == scrollController.position.maxScrollExtent;
      if(esVisible != !boton){
        setState(() {
          esVisible = !boton;
      });
    }
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      /*
      ? Boton que 
       */
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: Visibility(
        visible: esVisible,
        child: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
          child: Icon(Icons.keyboard_arrow_down, color: Color.fromARGB(255, 129, 128, 128), size: 55,),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: AppBar(
          flexibleSpace: Container(
            height: size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/banner_warner.jpg',),
                fit: BoxFit.fill
              )
            ),
          ),
          leading: FloatingActionButton(
            onPressed: () {
              
            },
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            elevation: 0,
            child: const Icon(Icons.arrow_back_rounded, color: Colors.white,),
          ),
          actions:  [
            FloatingActionButton(
            onPressed: () {
              
            },
            backgroundColor: const Color.fromARGB(0, 255, 255, 255),
            elevation: 0,
            child: const Icon(Icons.add_alert_outlined, color: Colors.white,),
          ),
          ],
        ),
      ),
      /*
      ? Contenedor con los botones y el listView
     */
      body: Expanded(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.black),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              /*
              ? Fila con los dos botones
              */
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FilledButton.icon(onPressed: () {
                    
                  },
                  icon: const Icon(Icons.search, color: Colors.white,),
                  label: const Text("Bucar"),
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 200, 60)),
                    
                  ),
                  ),
                  const VerticalDivider(
                    thickness: 1,
                  ),
                  FilledButton.icon(onPressed: () {
                    
                  }, 
                  icon: const Icon(Icons.confirmation_number_outlined, color: Colors.white,),
                  label: const Text("Mis entradas"),
                  style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 200, 60))
                  ),
                  )
                ],
              ),
              //SizedBox que da tamaño al ListView
              SizedBox(
                height: MediaQuery.of(context).size.height-230,
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: ListView(
                    controller: scrollController,
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                      children: [
                        /*
                        ? Fila que contiene los dos primeros contenedores
                        */
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(image: AssetImage('assets/images/Atracciones.jpeg'), fit: BoxFit.cover),
                                gradient: LinearGradient(colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent,],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.bottomCenter
                                ),
                              ),
                              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                              child: const Text("Atracciones", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)         
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.15,
                              width: MediaQuery.of(context).size.width * 0.45,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius:  BorderRadius.circular(10),
                                image: const DecorationImage(image: AssetImage('assets/images/Restaurantes.jpeg'), fit: BoxFit.cover),
                                gradient: LinearGradient(colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent,],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.bottomCenter
                                ),
                              ),
                              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                              child: const Text("Restaurantes", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)         
                            )
                          ],
                        ),
                        const SizedBox(height: 10,),
                        /*
                        ? Columna que contiene el contenedor apaisado y los ListTile
                        */
                        Column(
                          children: [
                            Container(
                              height: 150,
                              width: 390,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(image: AssetImage('assets/images/Mapa.jpeg',), fit: BoxFit.cover),
                                gradient: LinearGradient(colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent,],
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.bottomCenter
                                ),
                              ),
                              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                              child: const Text("Mapa", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),)         
                            )
                          ]
                        ),
                        const SizedBox(height: 20,),
                        ListTile(
                          leading: const Icon(Icons.store),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                          title: const Text("Tienda", style: TextStyle(fontSize: 18),),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.map_outlined),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                          title: const Text("Cómo llegar", style: TextStyle(fontSize: 18),),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.calendar_month_outlined),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                          title: const Text("Horario de apertura", style: TextStyle(fontSize: 18),),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.more_horiz),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                          title: const Text("Otros servicios", style: TextStyle(fontSize: 18),),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          leading: const Icon(Icons.assignment_outlined),
                          trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                          title: const Text("Normas de funcionamiento", style: TextStyle(fontSize: 18),),
                          onTap: () {},
                        ),
                      ],
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}