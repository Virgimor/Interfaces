import 'package:flutter/material.dart';

class HermassageBubble extends StatelessWidget {
  const HermassageBubble({super.key});

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
          child: const Padding( 
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text("hola", style: TextStyle(color: Colors.white),),
        ),
        ),
        const SizedBox(height: 10,),

        //Todo imagen
        const SizedBox(height: 10,),
        _ImageBubble(),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network('https://img.redbull.com/images/c_fill,g_auto,w_450,h_600/q_auto:low,f_auto/redbullcom/2017/07/29/e845daf6-0904-4e66-9b57-43ad2a81b846/foto-tomada-con-el-celular.jpg',
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
