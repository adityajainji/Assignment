// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listOfVideosModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideosListClass _$VideosListClassFromJson(Map<String, dynamic> json) =>
    VideosListClass(
      id: json['_id'] as String?,
      avg_color: json['avg_color'] as String?,
      duration: (json['duration'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      image: json['image'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      url: json['url'] as String?,
      user: json['user'] == null
          ? null
          : UserClass.fromJson(json['user'] as Map<String, dynamic>),
      video_files: (json['video_files'] as List<dynamic>?)
          ?.map((e) => VideoClass.fromJson(e as Map<String, dynamic>))
          .toList(),
      video_pictures: (json['video_pictures'] as List<dynamic>?)
          ?.map((e) => VideoImageClass.fromJson(e as Map<String, dynamic>))
          .toList(),
      width: (json['width'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VideosListClassToJson(VideosListClass instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'duration': instance.duration,
      'url': instance.url,
      'tags': instance.tags,
      'image': instance.image,
      'avg_color': instance.avg_color,
      'user': instance.user?.toJson(),
      'video_files': instance.video_files?.map((e) => e.toJson()).toList(),
      'video_pictures':
          instance.video_pictures?.map((e) => e.toJson()).toList(),
    };
