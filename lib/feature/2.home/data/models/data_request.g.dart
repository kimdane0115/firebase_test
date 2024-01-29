// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataRequestImpl _$$DataRequestImplFromJson(Map<String, dynamic> json) =>
    _$DataRequestImpl(
      name: json['name'] as String?,
      fields: MemberModel.fromJson(json['fields'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DataRequestImplToJson(_$DataRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'fields': instance.fields,
    };
