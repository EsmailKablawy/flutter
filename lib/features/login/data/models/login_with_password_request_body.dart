import 'package:json_annotation/json_annotation.dart';
part 'login_with_password_request_body.g.dart';

@JsonSerializable()
class LoginWithPasswordRequestBody {
  final String phone;
  @JsonKey(name: 'login_method')
  final String loginMethod;
  @JsonKey(name: 'device_type')
  final String deviceType;
  @JsonKey(name: 'device_id')
  final String deviceId;
  final String password;

  LoginWithPasswordRequestBody(
      {required this.phone,
      required this.loginMethod,
      required this.deviceId,
      required this.deviceType,
      required this.password});

  Map<String, dynamic> toJson() => _$LoginWithPasswordRequestBodyToJson(this);
}
