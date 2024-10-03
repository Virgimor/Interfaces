import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';


class ChartProvider extends ChangeNotifier{
  
  List<Message> messages = [
    Message(text: 'Ella', fromWho: FromWho.hers),
    Message(text: 'El', fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async{

  }

}