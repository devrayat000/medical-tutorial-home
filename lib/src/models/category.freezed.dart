// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of model_category;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryBase _$CategoryBaseFromJson(Map<String, dynamic> json) {
  return _CategoryBase.fromJson(json);
}

/// @nodoc
mixin _$CategoryBase {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  DateTime get created => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryBaseCopyWith<CategoryBase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryBaseCopyWith<$Res> {
  factory $CategoryBaseCopyWith(
          CategoryBase value, $Res Function(CategoryBase) then) =
      _$CategoryBaseCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'short_description') String description,
      @JsonKey(name: 'date_created') DateTime created});
}

/// @nodoc
class _$CategoryBaseCopyWithImpl<$Res> implements $CategoryBaseCopyWith<$Res> {
  _$CategoryBaseCopyWithImpl(this._value, this._then);

  final CategoryBase _value;
  // ignore: unused_field
  final $Res Function(CategoryBase) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CategoryBaseCopyWith<$Res>
    implements $CategoryBaseCopyWith<$Res> {
  factory _$CategoryBaseCopyWith(
          _CategoryBase value, $Res Function(_CategoryBase) then) =
      __$CategoryBaseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'short_description') String description,
      @JsonKey(name: 'date_created') DateTime created});
}

/// @nodoc
class __$CategoryBaseCopyWithImpl<$Res> extends _$CategoryBaseCopyWithImpl<$Res>
    implements _$CategoryBaseCopyWith<$Res> {
  __$CategoryBaseCopyWithImpl(
      _CategoryBase _value, $Res Function(_CategoryBase) _then)
      : super(_value, (v) => _then(v as _CategoryBase));

  @override
  _CategoryBase get _value => super._value as _CategoryBase;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? created = freezed,
  }) {
    return _then(_CategoryBase(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$_CategoryBase implements _CategoryBase {
  const _$_CategoryBase(
      {required this.id,
      required this.title,
      @JsonKey(name: 'short_description') required this.description,
      @JsonKey(name: 'date_created') required this.created});

  factory _$_CategoryBase.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryBaseFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'short_description')
  final String description;
  @override
  @JsonKey(name: 'date_created')
  final DateTime created;

  @override
  String toString() {
    return 'CategoryBase(id: $id, title: $title, description: $description, created: $created)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CategoryBase &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.created, created));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(created));

  @JsonKey(ignore: true)
  @override
  _$CategoryBaseCopyWith<_CategoryBase> get copyWith =>
      __$CategoryBaseCopyWithImpl<_CategoryBase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryBaseToJson(this);
  }
}

abstract class _CategoryBase implements CategoryBase {
  const factory _CategoryBase(
          {required final int id,
          required final String title,
          @JsonKey(name: 'short_description') required final String description,
          @JsonKey(name: 'date_created') required final DateTime created}) =
      _$_CategoryBase;

  factory _CategoryBase.fromJson(Map<String, dynamic> json) =
      _$_CategoryBase.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'short_description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_created')
  DateTime get created => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryBaseCopyWith<_CategoryBase> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_created')
  DateTime get created => throw _privateConstructorUsedError;
  List<Lecture> get lectures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'short_description') String description,
      @JsonKey(name: 'date_created') DateTime created,
      List<Lecture> lectures});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res> implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  final Category _value;
  // ignore: unused_field
  final $Res Function(Category) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? created = freezed,
    Object? lectures = freezed,
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
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lectures: lectures == freezed
          ? _value.lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
    ));
  }
}

/// @nodoc
abstract class _$CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$CategoryCopyWith(_Category value, $Res Function(_Category) then) =
      __$CategoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'short_description') String description,
      @JsonKey(name: 'date_created') DateTime created,
      List<Lecture> lectures});
}

/// @nodoc
class __$CategoryCopyWithImpl<$Res> extends _$CategoryCopyWithImpl<$Res>
    implements _$CategoryCopyWith<$Res> {
  __$CategoryCopyWithImpl(_Category _value, $Res Function(_Category) _then)
      : super(_value, (v) => _then(v as _Category));

  @override
  _Category get _value => super._value as _Category;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? created = freezed,
    Object? lectures = freezed,
  }) {
    return _then(_Category(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      created: created == freezed
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as DateTime,
      lectures: lectures == freezed
          ? _value.lectures
          : lectures // ignore: cast_nullable_to_non_nullable
              as List<Lecture>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Category implements _Category {
  const _$_Category(
      {required this.id,
      required this.title,
      @JsonKey(name: 'short_description') required this.description,
      @JsonKey(name: 'date_created') required this.created,
      required final List<Lecture> lectures})
      : _lectures = lectures;

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'short_description')
  final String description;
  @override
  @JsonKey(name: 'date_created')
  final DateTime created;
  final List<Lecture> _lectures;
  @override
  List<Lecture> get lectures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lectures);
  }

  @override
  String toString() {
    return 'Category(id: $id, title: $title, description: $description, created: $created, lectures: $lectures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Category &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.created, created) &&
            const DeepCollectionEquality().equals(other.lectures, lectures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(created),
      const DeepCollectionEquality().hash(lectures));

  @JsonKey(ignore: true)
  @override
  _$CategoryCopyWith<_Category> get copyWith =>
      __$CategoryCopyWithImpl<_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(this);
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final int id,
      required final String title,
      @JsonKey(name: 'short_description') required final String description,
      @JsonKey(name: 'date_created') required final DateTime created,
      required final List<Lecture> lectures}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'short_description')
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'date_created')
  DateTime get created => throw _privateConstructorUsedError;
  @override
  List<Lecture> get lectures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CategoryCopyWith<_Category> get copyWith =>
      throw _privateConstructorUsedError;
}
