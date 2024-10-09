import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/get_Yes_No_Answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';


class ChartProvider extends ChangeNotifier{
  
  List<Message> messageList = [
    Message(text: 'Ella', fromWho: FromWho.me),
    Message(text: 'El', fromWho: FromWho.me),
  ];

  final ScrollController scrollController = ScrollController();
  final YesNoAnswer getYesNoAnswer = YesNoAnswer();
  

  Future<void> sendMessage(String text) async{
    if(text.isEmpty) return;
    messageList.add(Message(text: text, fromWho: FromWho.me));
    if(text.endsWith('?')){
      herReply();
    }
    
    notifyListeners();
    moveToBotton();
  }

  Future<void>herReply() async{
    final hermessage = await getYesNoAnswer.getAnswer();
    if(hermessage.text.isEmpty) return;
   messageList.add(hermessage);
  }

  Future<void> moveToBotton() async {
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.easeOut);
  }

}