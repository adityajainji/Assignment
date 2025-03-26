// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videoModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoClass _$VideoClassFromJson(Map<String, dynamic> json) => VideoClass(
      id: json['_id'] as String?,
      file_type: json['file_type'] as String?,
      fps: (json['fps'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      link: json['link'] as String?,
      quality: json['quality'] as String?,
      size: (json['size'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VideoClassToJson(VideoClass instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'quality': instance.quality,
      'file_type': instance.file_type,
      'link': instance.link,
      'width': instance.width,
      'height': instance.height,
      'fps': instance.fps,
      'size': instance.size,
    };
