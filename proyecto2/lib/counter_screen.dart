import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({super.key});


  @override
  State<CounterScreen> createState() => _CounterScreenState(); 
}

class _CounterScreenState extends State<CounterScreen>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:const Text('COLORES', style: TextStyle(fontSize: 50)), centerTitle: true
      ),
      body: Center(
        child:
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width /3,
                  height: MediaQuery.of(context).size.height *0.2
                ),
                Container(
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width /3,
                  height: MediaQuery.of(context).size.height *0.2
                ),
                Container(
                  color: Colors.green,
                  width: MediaQuery.of(context).size.width /3,
                  height: MediaQuery.of(context).size.height *0.2
                )
              ],
            ),
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
              color: Colors.yellow,
              width: MediaQuery.of(context).size.width /2,
              height: MediaQuery.of(context).size.height *0.2
            ),
           Container(
              color: Colors.orange,
               width: MediaQuery.of(context).size.width /2,
               height: MediaQuery.of(context).size.height *0.2
            ),
           ],
         ),
         Row(
              mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width *0.25,
                  height: MediaQuery.of(context).size.height *0.2
                ),
                Container(
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width *0.50,
                  height: MediaQuery.of(context).size.height *0.2
                ),
                Container(
                  color: Colors.green,
                  width: MediaQuery.of(context).size.width *0.25,
                  height: MediaQuery.of(context).size.height *0.2
                )
              ],
            ),
            const Text('FIN COLORES', style: TextStyle(fontSize: 50),)
          ],
        ),
      ),
    );
  }

}