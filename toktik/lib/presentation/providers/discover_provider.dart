import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infraestructure/models/local_video_model.dart';
import 'package:toktik/share/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{

  bool initialLoading = true;

  List<VideoPost> video =[];

  Future<void> loadNextPage() async{
    await Future.delayed(const Duration(seconds: 2));
    final iterableVideos =
    //.map es para recorrerlo
    videoPosts.map((video) => LocalVideoModel.fromJsonMap(video).toEntity());

    final newVideos = iterableVideos.toList();

    video.addAll(newVideos);

    notifyListeners();
  }

}