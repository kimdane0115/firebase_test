import 'package:freezed_annotation/freezed_annotation.dart';

import 'member_model.dart';

part 'data_request.freezed.dart';
part 'data_request.g.dart';

@freezed
class DataRequest with _$DataRequest {
  factory DataRequest({
    String? name,
    required MemberModel fields,
  }) = _DataRequest;

  factory DataRequest.fromJson(Map<String, dynamic> json) => _$DataRequestFromJson(json);
}