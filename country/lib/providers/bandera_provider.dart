
import 'package:country/domain/entities/bandera_answer.dart';
import 'package:flutter/material.dart';

class BanderaProvider extends ChangeNotifier{

  String? url='https://ichef.bbci.co.uk/ace/ws/640/cpsprodpb/15665/production/_107435678_perro1.jpg.webp';

  void colocarBandera(){
    BanderaAnswer().getAnswer().then((imagen){
      url=imagen;
      notifyListeners();
    });
  }
}