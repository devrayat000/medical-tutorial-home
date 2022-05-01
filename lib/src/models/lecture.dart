library model_lecture;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture.g.dart';
part 'lecture.freezed.dart';

@freezed
class Lecture with _$Lecture {
  const factory Lecture({
    required int id,
    required String title,
    // required int category,
    required Uri link,
    required String duration,
    @JsonKey(name: 'date_created') required DateTime created,
  }) = _Lecture;

  factory Lecture.fromJson(Map<String, dynamic> json) =>
      _$LectureFromJson(json);
}
