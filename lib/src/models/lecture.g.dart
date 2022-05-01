// GENERATED CODE - DO NOT MODIFY BY HAND

part of model_lecture;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lecture _$$_LectureFromJson(Map<String, dynamic> json) => _$_Lecture(
      id: json['id'] as int,
      title: json['title'] as String,
      link: Uri.parse(json['link'] as String),
      duration: json['duration'] as String,
      created: DateTime.parse(json['date_created'] as String),
    );

Map<String, dynamic> _$$_LectureToJson(_$_Lecture instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'link': instance.link.toString(),
      'duration': instance.duration,
      'date_created': instance.created.toIso8601String(),
    };
