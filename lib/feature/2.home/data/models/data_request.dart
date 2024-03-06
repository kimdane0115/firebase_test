import 'package:firebase_test/feature/2.home/data/models/member_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// // import 'member_model.dart';

part 'data_request.freezed.dart';
part 'data_request.g.dart';

// @Freezed(genericArgumentFactories: true)
// // @freezed
// class DataRequest<T> with _$DataRequest<T> {
//   @JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
//   factory DataRequest({
//     String? name,
//     required T fields,
//   }) = _DataRequest;

//   factory DataRequest.fromJson(
//           Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
//       _$DataRequestFromJson(json, fromJsonT);
// }


@Freezed(genericArgumentFactories: true, equal: true)
// @freezed
class DataRequest<T> with _$DataRequest<T> {
  @JsonSerializable(explicitToJson: true, genericArgumentFactories: true, createToJson: true)
  const factory DataRequest.data(String? name, T? fields) = DataRequestData;
  // factory DataRequest({
  //   String? name,
  //   T? fields,
  // }) = _DataRequest;
  // const factory DataRequest.error(String message) = DataRequestError;

  factory DataRequest.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$DataRequestFromJson(json, fromJsonT);
}

// import 'package:firebase_test/feature/2.home/data/models/member_model.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// part 'data_request.freezed.dart';
// part 'data_request.g.dart';

// @Freezed(toJson: true)
// class DataRequest with _$DataRequest {
//   @JsonSerializable(explicitToJson: true, createToJson: true)
//   factory DataRequest({
//     String? name,
//     MemberModel? fields,
//   }) = _DataRequest;

//   factory DataRequest.fromJson(Map<String, dynamic> json) => _$DataRequestFromJson(json);
//   Map<String, dynamic> toJson() => _$DataRequestToJson(this);
// }