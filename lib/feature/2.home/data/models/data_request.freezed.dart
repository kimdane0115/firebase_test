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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DataRequest _$DataRequestFromJson(Map<String, dynamic> json) {
  return _DataRequest.fromJson(json);
}

/// @nodoc
mixin _$DataRequest {
  String? get name => throw _privateConstructorUsedError;
  MemberModel get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataRequestCopyWith<DataRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataRequestCopyWith<$Res> {
  factory $DataRequestCopyWith(
          DataRequest value, $Res Function(DataRequest) then) =
      _$DataRequestCopyWithImpl<$Res, DataRequest>;
  @useResult
  $Res call({String? name, MemberModel fields});

  $MemberModelCopyWith<$Res> get fields;
}

/// @nodoc
class _$DataRequestCopyWithImpl<$Res, $Val extends DataRequest>
    implements $DataRequestCopyWith<$Res> {
  _$DataRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fields = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as MemberModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberModelCopyWith<$Res> get fields {
    return $MemberModelCopyWith<$Res>(_value.fields, (value) {
      return _then(_value.copyWith(fields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataRequestImplCopyWith<$Res>
    implements $DataRequestCopyWith<$Res> {
  factory _$$DataRequestImplCopyWith(
          _$DataRequestImpl value, $Res Function(_$DataRequestImpl) then) =
      __$$DataRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, MemberModel fields});

  @override
  $MemberModelCopyWith<$Res> get fields;
}

/// @nodoc
class __$$DataRequestImplCopyWithImpl<$Res>
    extends _$DataRequestCopyWithImpl<$Res, _$DataRequestImpl>
    implements _$$DataRequestImplCopyWith<$Res> {
  __$$DataRequestImplCopyWithImpl(
      _$DataRequestImpl _value, $Res Function(_$DataRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? fields = null,
  }) {
    return _then(_$DataRequestImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: null == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as MemberModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataRequestImpl implements _DataRequest {
  _$DataRequestImpl({this.name, required this.fields});

  factory _$DataRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataRequestImplFromJson(json);

  @override
  final String? name;
  @override
  final MemberModel fields;

  @override
  String toString() {
    return 'DataRequest(name: $name, fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fields, fields) || other.fields == fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, fields);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataRequestImplCopyWith<_$DataRequestImpl> get copyWith =>
      __$$DataRequestImplCopyWithImpl<_$DataRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataRequestImplToJson(
      this,
    );
  }
}

abstract class _DataRequest implements DataRequest {
  factory _DataRequest(
      {final String? name,
      required final MemberModel fields}) = _$DataRequestImpl;

  factory _DataRequest.fromJson(Map<String, dynamic> json) =
      _$DataRequestImpl.fromJson;

  @override
  String? get name;
  @override
  MemberModel get fields;
  @override
  @JsonKey(ignore: true)
  _$$DataRequestImplCopyWith<_$DataRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
