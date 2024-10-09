import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HermassageBubble extends StatelessWidget {
  final Message message;
  const HermassageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {

    final colors =Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(message.text , style: const TextStyle(color: Colors.white),),
        ),
        ),
        
        //Todo imagen
        const SizedBox(height: 10,),
        _ImageBubble(imageUrl: message.imageUrl,),
      ],
    );
  }
}


class _ImageBubble extends StatelessWidget{
  final String? imageUrl;
  const _ImageBubble({required this.imageUrl});
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(imageUrl!,
      //width: size.width * 0.15,
      //height: size.height * 0.3,
      fit: BoxFit.fill,
      loadingBuilder: (context, child, loadingProgress) {
        if(loadingProgress == null) return child;

       return  Container(
          width: size.width * 0.15,
          height: size.height * 0.3,
          color: Colors.grey,
          child: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
      ),
    );
  } 
}
