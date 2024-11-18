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
          Container(
            height: size.height * 0.75,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
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
                  Column(
                    children: [
                      ListView(
                        children: [
                          Row(

                          ),
                          Column(

                          )
                        ],
                      )
                    ]
                  )
                ],
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}