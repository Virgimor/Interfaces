import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formats.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {
  final VideoPost video;
  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         _CustomIconButton(
          valor: video.likes, 
          icon: Icons.favorite, 
          color: Colors.red,
        ),
        _CustomIconButton(
          valor: video.view, 
          icon: Icons.remove_red_eye_outlined, 
          color: null,
        ),
        const _CustomIconButton(
          valor: 0, 
          icon: Icons.play_circle_fill_outlined, 
          color: null,
        ),
      ],
    );
  }
}

class _CustomIconButton extends StatelessWidget {
final int valor;
final IconData icon;
final Color? color;

  const _CustomIconButton({
    required this.valor,
    this.color = Colors.orange,
    required this.icon, 
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: (){}(), 
          icon: Icon(icon, 
          color:color
          )),
          const SizedBox(height: 5),
          Text(HumanFormats.humanReadableNumer(valor.toDouble())),
      ],
    );
  }
}