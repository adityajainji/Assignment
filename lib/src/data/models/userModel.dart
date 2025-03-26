import 'package:json_annotation/json_annotation.dart';

part 'userModel.g.dart';

@JsonSerializable(explicitToJson: true)
class UserClass {
  @JsonKey(name: '_id')
  String? id;
  String? name;
  String? url;

  UserClass({
    this.id,
    this.name,
    this.url,
  });

  factory UserClass.fromJson(Map<String, dynamic> json) =>
      _$UserClassFromJson(json);
  Map<String, dynamic> toJson() => _$UserClassToJson(this);
}
