// GENERATED CODE - DO NOT MODIFY BY HAND

part of model_category;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryBase _$$_CategoryBaseFromJson(Map<String, dynamic> json) =>
    _$_CategoryBase(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['short_description'] as String,
      created: DateTime.parse(json['date_created'] as String),
    );

Map<String, dynamic> _$$_CategoryBaseToJson(_$_CategoryBase instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_description': instance.description,
      'date_created': instance.created.toIso8601String(),
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['short_description'] as String,
      created: DateTime.parse(json['date_created'] as String),
      lectures: (json['lectures'] as List<dynamic>)
          .map((e) => Lecture.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'short_description': instance.description,
      'date_created': instance.created.toIso8601String(),
      'lectures': instance.lectures,
    };
