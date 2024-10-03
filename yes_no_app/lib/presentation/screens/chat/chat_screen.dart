import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/mymessage_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Screen'),
        centerTitle: false,
        leading: Container(
          //color: Colors.red,
          //margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(2.0),
          child: const CircleAvatar(
          backgroundImage: NetworkImage('https://media.istockphoto.com/id/519402657/photo/maxican-chihuahua.jpg?s=612x612&w=0&k=20&c=Paw3wkZks_pjEZXnm__nYzMLpUtScWHgfnL9mYw2uWA='),
        ),
        ),
      ),
      body: _ChatView (),
    );
  }
}
 


class _ChatView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return SafeArea(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 10.0),
       child: Column(
         children: [
           Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
              //return Text('Chat Message $index');
              return (index % 2 ==0)
              ? const HermassageBubble()
              : const MyMessageBubble();
            },)    
            ),
            const MessageFielBox(),
            const SizedBox(height: 10,)
         ],
       ),
     ),
   );    
  }
}

