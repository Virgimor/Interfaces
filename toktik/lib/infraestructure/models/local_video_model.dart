import 'package:toktik/domain/entities/video_post.dart';

class LocalVideoModel{
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0
  });

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) {
     return LocalVideoModel(
    name: json ['name'] ?? 'No name',  // doble interrogación es doble negacion
    videoUrl: json ['videoUrl'],
    likes: json ['likes'] ?? 0,
    views: json ['views'] ?? 0
    );
  }
  VideoPost toEntity(){
    return VideoPost(
      caption: name, 
      videoUrl: videoUrl,
      likes: likes,
      view: views
      );
  }
}