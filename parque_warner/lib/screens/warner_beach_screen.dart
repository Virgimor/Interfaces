import 'package:flutter/material.dart';

class WarnerBeachScreen extends StatefulWidget {
  const WarnerBeachScreen({super.key});

  @override
  State<WarnerBeachScreen> createState() => _WarnerBeachScreenState();
}

class _WarnerBeachScreenState extends State<WarnerBeachScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          title: Image.asset('assets/images/banner_warner.jpg', height: 1000,),
          actions:  const [
            Icon(Icons.add_alert_outlined)
          ],),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20)),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                FilledButton(onPressed: () {
                  
                }, child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search, color: Colors.white,),
                    Text("Bucar")
                  ],
                ) ),
                FilledButton(onPressed: () {
                  
                }, child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.airplane_ticket),
                  Text("Mis entradas")
                  ]
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}