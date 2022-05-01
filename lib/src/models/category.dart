library model_category;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:study_helper/src/models/lecture.dart';

part 'category.g.dart';
part 'category.freezed.dart';

@freezed
class CategoryBase with _$CategoryBase {
  const factory CategoryBase({
    required int id,
    required String title,
    @JsonKey(name: 'short_description') required String description,
    @JsonKey(name: 'date_created') required DateTime created,
  }) = _CategoryBase;

  factory CategoryBase.fromJson(Map<String, dynamic> json) =>
      _$CategoryBaseFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String title,
    @JsonKey(name: 'short_description') required String description,
    @JsonKey(name: 'date_created') required DateTime created,
    required List<Lecture> lectures,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
