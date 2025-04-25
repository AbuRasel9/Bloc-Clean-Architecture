import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model_request.freezed.dart';

part 'user_model_request.g.dart';

@freezed
class UserModelRequest with _$UserModelRequest {
  factory UserModelRequest({
    @Default("") @JsonKey(name: "email") String email,
    @Default("") @JsonKey(name: "password") String password,
  }) = _UserModelRequset;

  factory UserModelRequest.fromJson(Map<String, dynamic> json) =>
      _$UserModelRequestFromJson(json);
}
