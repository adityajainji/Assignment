// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videosImageModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoImageClass _$VideoImageClassFromJson(Map<String, dynamic> json) =>
    VideoImageClass(
      id: json['_id'] as String?,
      nr: (json['nr'] as num?)?.toInt(),
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$VideoImageClassToJson(VideoImageClass instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'picture': instance.picture,
      'nr': instance.nr,
    };
