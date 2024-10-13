import 'package:country/providers/bandera_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenBandera extends StatelessWidget{
  ScreenBandera({super.key});

final TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(
        create: (_)=>BanderaProvider())],
        child: Builder(
          builder: (context){
            return Scaffold(
              appBar: AppBar(
                title: const Text('Banderas'),
              ),
              body: Column(
                children: [
                  Consumer<BanderaProvider>(
                    builder: (context, banderaProvider, child){
                      return Image.network(banderaProvider.url!);
                    }
                  ),
                  TextFormField(
                    controller: textController,
                    decoration: const InputDecoration(
                      hintText: 'Escribe el nombre de un país'
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                      if (textController.text.toLowerCase() == 'spain'){
                        Provider.of<BanderaProvider>(context, listen: false).colocarBandera();
                      }
                    }, 
                    child: const Text('Pulsa')),
                ],
              ),
            );
          }
        ),
    );
  }
}