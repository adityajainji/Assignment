import 'package:json_annotation/json_annotation.dart';
import 'package:video_player/src/data/models/userModel.dart';
import 'package:video_player/src/data/models/videoModel.dart';
import 'package:video_player/src/data/models/videosImageModel.dart';

part 'listOfVideosModel.g.dart';

@JsonSerializable(explicitToJson: true)
class VideosListClass {
  @JsonKey(name: '_id')
  String? id;
  int? width;
  int? height;
  int? duration;
  String? url;
  List<String>? tags;
  String? image;
  String? avg_color;
  UserClass? user;
  List<VideoClass>? video_files;
  List<VideoImageClass>? video_pictures;

  VideosListClass({
    this.id,
    this.avg_color,
    this.duration,
    this.height,
    this.image,
    this.tags,
    this.url,
    this.user,
    this.video_files,
    this.video_pictures,
    this.width,
  });

  factory VideosListClass.fromJson(Map<String, dynamic> json) =>
      _$VideosListClassFromJson(json);
  Map<String, dynamic> toJson() => _$VideosListClassToJson(this);
}
