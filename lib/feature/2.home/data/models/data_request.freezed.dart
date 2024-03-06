// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DataRequest<T> _$DataRequestFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return DataRequestData<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$DataRequest<T> {
  String? get name => throw _privateConstructorUsedError;
  T? get fields => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, T? fields) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, T? fields)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, T? fields)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataRequestData<T> value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataRequestData<T> value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRequestCopyWith<T, DataRequest<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRequestCopyWith<T, $Res> {
  factory $DataRequestCopyWith(
          DataRequest<T> value, $Res Function(DataRequest<T>) then) =
      _$DataRequestCopyWithImpl<T, $Res, DataRequest<T>>;
  @useResult
  $Res call({String? name, T? fields});
}

/// @nodoc
class _$DataRequestCopyWithImpl<T, $Res, $Val extends DataRequest<T>>
    implements $DataRequestCopyWith<T, $Res> {
  _$DataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataRequestDataImplCopyWith<T, $Res>
    implements $DataRequestCopyWith<T, $Res> {
  factory _$$DataRequestDataImplCopyWith(_$DataRequestDataImpl<T> value,
          $Res Function(_$DataRequestDataImpl<T>) then) =
      __$$DataRequestDataImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String? name, T? fields});
}

/// @nodoc
class __$$DataRequestDataImplCopyWithImpl<T, $Res>
    extends _$DataRequestCopyWithImpl<T, $Res, _$DataRequestDataImpl<T>>
    implements _$$DataRequestDataImplCopyWith<T, $Res> {
  __$$DataRequestDataImplCopyWithImpl(_$DataRequestDataImpl<T> _value,
      $Res Function(_$DataRequestDataImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fields = freezed,
  }) {
    return _then(_$DataRequestDataImpl<T>(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    explicitToJson: true, genericArgumentFactories: true, createToJson: true)
class _$DataRequestDataImpl<T> implements DataRequestData<T> {
  const _$DataRequestDataImpl(this.name, this.fields);

  factory _$DataRequestDataImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$DataRequestDataImplFromJson(json, fromJsonT);

  @override
  final String? name;
  @override
  final T? fields;

  @override
  String toString() {
    return 'DataRequest<$T>.data(name: $name, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRequestDataImpl<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.fields, fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataRequestDataImplCopyWith<T, _$DataRequestDataImpl<T>> get copyWith =>
      __$$DataRequestDataImplCopyWithImpl<T, _$DataRequestDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, T? fields) data,
  }) {
    return data(name, fields);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, T? fields)? data,
  }) {
    return data?.call(name, fields);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, T? fields)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(name, fields);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DataRequestData<T> value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DataRequestData<T> value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DataRequestData<T> value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$DataRequestDataImplToJson<T>(this, toJsonT);
  }
}

abstract class DataRequestData<T> implements DataRequest<T> {
  const factory DataRequestData(final String? name, final T? fields) =
      _$DataRequestDataImpl<T>;

  factory DataRequestData.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$DataRequestDataImpl<T>.fromJson;

  @override
  String? get name;
  @override
  T? get fields;
  @override
  @JsonKey(ignore: true)
  _$$DataRequestDataImplCopyWith<T, _$DataRequestDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
