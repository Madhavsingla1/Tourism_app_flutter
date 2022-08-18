// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'places_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) {
  return _PlaceModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceModel {
  String get ImageUrl => throw _privateConstructorUsedError;
  String get Name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
          PlaceModel value, $Res Function(PlaceModel) then) =
      _$PlaceModelCopyWithImpl<$Res>;
  $Res call({String ImageUrl, String Name});
}

/// @nodoc
class _$PlaceModelCopyWithImpl<$Res> implements $PlaceModelCopyWith<$Res> {
  _$PlaceModelCopyWithImpl(this._value, this._then);

  final PlaceModel _value;
  // ignore: unused_field
  final $Res Function(PlaceModel) _then;

  @override
  $Res call({
    Object? ImageUrl = freezed,
    Object? Name = freezed,
  }) {
    return _then(_value.copyWith(
      ImageUrl: ImageUrl == freezed
          ? _value.ImageUrl
          : ImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      Name: Name == freezed
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_PlaceModelCopyWith<$Res>
    implements $PlaceModelCopyWith<$Res> {
  factory _$$_PlaceModelCopyWith(
          _$_PlaceModel value, $Res Function(_$_PlaceModel) then) =
      __$$_PlaceModelCopyWithImpl<$Res>;
  @override
  $Res call({String ImageUrl, String Name});
}

/// @nodoc
class __$$_PlaceModelCopyWithImpl<$Res> extends _$PlaceModelCopyWithImpl<$Res>
    implements _$$_PlaceModelCopyWith<$Res> {
  __$$_PlaceModelCopyWithImpl(
      _$_PlaceModel _value, $Res Function(_$_PlaceModel) _then)
      : super(_value, (v) => _then(v as _$_PlaceModel));

  @override
  _$_PlaceModel get _value => super._value as _$_PlaceModel;

  @override
  $Res call({
    Object? ImageUrl = freezed,
    Object? Name = freezed,
  }) {
    return _then(_$_PlaceModel(
      ImageUrl: ImageUrl == freezed
          ? _value.ImageUrl
          : ImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      Name: Name == freezed
          ? _value.Name
          : Name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceModel implements _PlaceModel {
  const _$_PlaceModel({required this.ImageUrl, required this.Name});

  factory _$_PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceModelFromJson(json);

  @override
  final String ImageUrl;
  @override
  final String Name;

  @override
  String toString() {
    return 'PlaceModel(ImageUrl: $ImageUrl, Name: $Name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceModel &&
            const DeepCollectionEquality().equals(other.ImageUrl, ImageUrl) &&
            const DeepCollectionEquality().equals(other.Name, Name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ImageUrl),
      const DeepCollectionEquality().hash(Name));

  @JsonKey(ignore: true)
  @override
  _$$_PlaceModelCopyWith<_$_PlaceModel> get copyWith =>
      __$$_PlaceModelCopyWithImpl<_$_PlaceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceModelToJson(
      this,
    );
  }
}

abstract class _PlaceModel implements PlaceModel {
  const factory _PlaceModel(
      {required final String ImageUrl,
      required final String Name}) = _$_PlaceModel;

  factory _PlaceModel.fromJson(Map<String, dynamic> json) =
      _$_PlaceModel.fromJson;

  @override
  String get ImageUrl;
  @override
  String get Name;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceModelCopyWith<_$_PlaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
