// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of model_lecture;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lecture _$LectureFromJson(Map<String, dynamic> json) {
  return _Lecture.fromJson(json);
}

/// @nodoc
mixin _$Lecture {
  int get id => throw _privateConstructorUsedError;
  String get title =>
      throw _privateConstructorUsedError; // required int category,
  Uri get link => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LectureCopyWith<Lecture> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LectureCopyWith<$Res> {
  factory $LectureCopyWith(Lecture value, $Res Function(Lecture) then) =
      _$LectureCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      Uri link,
      String duration,
      @JsonKey(name: 'date_created') DateTime created});
}

/// @nodoc
class _$LectureCopyWithImpl<$Res> implements $LectureCopyWith<$Res> {
  _$LectureCopyWithImpl(this._value, this._then);

  final Lecture _value;
  // ignore: unused_field
  final $Res Function(Lecture) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? duration = freezed,
    Object? created = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$LectureCopyWith<$Res> implements $LectureCopyWith<$Res> {
  factory _$LectureCopyWith(_Lecture value, $Res Function(_Lecture) then) =
      __$LectureCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      Uri link,
      String duration,
      @JsonKey(name: 'date_created') DateTime created});
}

/// @nodoc
class __$LectureCopyWithImpl<$Res> extends _$LectureCopyWithImpl<$Res>
    implements _$LectureCopyWith<$Res> {
  __$LectureCopyWithImpl(_Lecture _value, $Res Function(_Lecture) _then)
      : super(_value, (v) => _then(v as _Lecture));

  @override
  _Lecture get _value => super._value as _Lecture;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? link = freezed,
    Object? duration = freezed,
    Object? created = freezed,
  }) {
    return _then(_Lecture(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lecture implements _Lecture {
  const _$_Lecture(
      {required this.id,
      required this.title,
      required this.link,
      required this.duration,
      @JsonKey(name: 'date_created') required this.created});

  factory _$_Lecture.fromJson(Map<String, dynamic> json) =>
      _$$_LectureFromJson(json);

  @override
  final int id;
  @override
  final String title;
// required int category,
  @override
  final Uri link;
  @override
  final String duration;
  @override
  @JsonKey(name: 'date_created')
  final DateTime created;

  @override
  String toString() {
    return 'Lecture(id: $id, title: $title, link: $link, duration: $duration, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Lecture &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$LectureCopyWith<_Lecture> get copyWith =>
      __$LectureCopyWithImpl<_Lecture>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LectureToJson(this);
  }
}

abstract class _Lecture implements Lecture {
  const factory _Lecture(
          {required final int id,
          required final String title,
          required final Uri link,
          required final String duration,
          @JsonKey(name: 'date_created') required final DateTime created}) =
      _$_Lecture;

  factory _Lecture.fromJson(Map<String, dynamic> json) = _$_Lecture.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override // required int category,
  Uri get link => throw _privateConstructorUsedError;
  @override
  String get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_created')
  DateTime get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LectureCopyWith<_Lecture> get copyWith =>
      throw _privateConstructorUsedError;
}
