// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataRequestDataImpl<T> _$$DataRequestDataImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$DataRequestDataImpl<T>(
      json['name'] as String?,
      _$nullableGenericFromJson(json['fields'], fromJsonT),
    );

Map<String, dynamic> _$$DataRequestDataImplToJson<T>(
  _$DataRequestDataImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': _$nullableGenericToJson(instance.fields, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
