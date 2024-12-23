import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/presentation/screens/video/full_screen_player.dart';
import 'package:toktik/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;
  const VideoScrollableView({super.key, required this.videos});
  
  

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index){
        final VideoPost video = videos[index];

        return Stack(
          children: [
            //video player + gradiente
            //Botones
            SizedBox(
              child: FullScreenPlayer(
              videoUrl: video.videoUrl, 
              caption: video.caption
              ),
            ),
            
            Positioned(
            bottom: 40,
            right: 20,
            child: VideoButtons(video: video),
            ),
          ],
        );
      }
    );
  }
}