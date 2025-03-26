import 'package:json_annotation/json_annotation.dart';

part 'videosImageModel.g.dart';

@JsonSerializable(explicitToJson: true)
class VideoImageClass {
  @JsonKey(name: '_id')
  String? id;
  String? picture;
  int? nr;

  VideoImageClass({
    this.id,
    this.nr,
    this.picture,
  });

  factory VideoImageClass.fromJson(Map<String, dynamic> json) =>
      _$VideoImageClassFromJson(json);
  Map<String, dynamic> toJson() => _$VideoImageClassToJson(this);
}
