import 'package:json_annotation/json_annotation.dart';

part 'common_request.g.dart';

@JsonSerializable(explicitToJson: true, genericArgumentFactories: true)
class CommonRequest<T> {
  // final String? name;
  final T? fields;
  CommonRequest({
    // this.name,
    this.fields,
  });

  // Interesting bits here → ----------------------------------- ↓ ↓
  factory CommonRequest.fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$CommonRequestFromJson<T>(json, fromJsonT);

  // And here → ------------- ↓ ↓
  Map<String, dynamic> toJson(Object Function(T) toJsonT) => _$CommonRequestToJson<T>(this, toJsonT);
}
