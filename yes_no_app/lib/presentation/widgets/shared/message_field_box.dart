import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:yes_no_app/main.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
//import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

class MessageFielBox extends StatelessWidget {
  const MessageFielBox({super.key});

  @override
  Widget build(BuildContext context) {
    final chartProvider = context.watch<ChartProvider>();
    final colors =Theme.of(context).colorScheme;
    var underlineInputBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: colors.primary),
      borderRadius: BorderRadius.circular(20),
  );
    final textController= TextEditingController();
    final focusNode = FocusNode();
   
    var inputDecoration = InputDecoration(
      hintText: 'End your message with a "??"',
        enabledBorder: underlineInputBorder,
        focusedBorder: underlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined), 
          onPressed: () { 
            final textValue = textController.text;
            chartProvider.sendMessage(textValue);
            print('Send message $textValue');
            textController.clear();
           },)
      );
    return TextFormField(
      onTapOutside: (even) =>
      focusNode.unfocus(),
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value){
        chartProvider.sendMessage(value);
        print('Submit value $value');
        textController.clear();
        focusNode.requestFocus();
      },
      onChanged: (value){
        print('changed: $value');
      },
    );
  }
}
