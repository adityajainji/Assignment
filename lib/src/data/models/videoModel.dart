import 'package:json_annotation/json_annotation.dart';

part 'videoModel.g.dart';

@JsonSerializable(explicitToJson: true)
class VideoClass {
  @JsonKey(name: '_id')
  String? id;
  String? quality;
  String? file_type;
  String? link;
  int? width;
  int? height;
  int? fps;
  int? size;

  VideoClass({
    this.id,
    this.file_type,
    this.fps,
    this.height,
    this.link,
    this.quality,
    this.size,
    this.width,
  });

  factory VideoClass.fromJson(Map<String, dynamic> json) =>
      _$VideoClassFromJson(json);
  Map<String, dynamic> toJson() => _$VideoClassToJson(this);
}
