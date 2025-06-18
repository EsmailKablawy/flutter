import 'package:json_annotation/json_annotation.dart';
part 'verify_request_body.g.dart';

@JsonSerializable()
class VerifyRequestBody {
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @JsonKey(name: 'verify_code')
  final String verifyCode;

  VerifyRequestBody({
    required this.phoneNumber,
    required this.verifyCode,
  });

  Map<String, dynamic> toJson() => _$VerifyRequestBodyToJson(this);
}
