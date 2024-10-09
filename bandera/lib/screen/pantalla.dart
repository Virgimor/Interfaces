import 'package:flutter/material.dart';

class Pantalla extends StatelessWidget{
  const Pantalla({super.key});

  @override
  Widget build(BuildContext context) {
    var textController = TextEditingController();
      String imageUrl = 'https://www.educaciontrespuntocero.com/wp-content/uploads/2020/04/mejores-bancos-de-imagenes-gratis.jpg';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banderas'),
      ),
      body: Center(
        child: Column(
          children: [
            TextFormField(
              controller: textController,
            ),
            ElevatedButton(
              onPressed: (){
                if (textController.text == "Spain" || textController.text == "spain"){
                  Image.network(imageUrl);
                }
              }, 
              child: const Text('Dime la bandera')
              ),
          ],
        ),
      ),
    );
  }

}