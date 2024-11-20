import 'package:flutter/material.dart';

class WarnerBeachScreen extends StatefulWidget {
  const WarnerBeachScreen({super.key});

  @override
  State<WarnerBeachScreen> createState() => _WarnerBeachScreenState();
}

class _WarnerBeachScreenState extends State<WarnerBeachScreen> {
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
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
      body: Column(
        children: [
          Expanded(
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FilledButton.icon(onPressed: () {
                      
                    },
                    icon: const Icon(Icons.search, color: Colors.white,),
                    label: const Text("Bucar"),
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 255, 200, 60))
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
                SizedBox(
                  height: MediaQuery.of(context).size.height-230,
                  width: MediaQuery.of(context).size.width,
                  child: Expanded(
                    child: ListView(
                        padding: const EdgeInsets.all(8),
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 120,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(image: AssetImage('assets/images/banner_warner.jpg'), fit: BoxFit.cover)
                                ),
                                
                                child: const Text("Atracciones", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)         
                              ),
                              Container(
                                height: 120,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(image: AssetImage('assets/images/banner_warner.jpg'), fit: BoxFit.cover)
                                ),
                                
                                child: const Text("Atracciones", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)         
                              )
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Column(
                            children: [
                              Container(
                                height: 150,
                                width: 350,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                  image: const DecorationImage(image: AssetImage('assets/images/banner_warner.jpg',), fit: BoxFit.cover)
                                ),
                                
                                child: const Text("Mapa", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)         
                              )
                            ]
                          ),
                          const SizedBox(height: 20,),
                          ListTile(
                            leading: const Icon(Icons.store),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                            title: const Text("Tienda"),
                            onTap: () {},
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.map_outlined),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                            title: const Text("Cómo llegar"),
                            onTap: () {},
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.calendar_month_outlined),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                            title: const Text("Horario de apertura"),
                            onTap: () {},
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.more_horiz),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                            title: const Text("Otros servicios"),
                            onTap: () {},
                          ),
                          const Divider(),
                          ListTile(
                            leading: const Icon(Icons.assignment_outlined),
                            trailing: const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey,),
                            title: const Text("Normas de funcionamiento"),
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
        ],
      ),
    );
  }
}