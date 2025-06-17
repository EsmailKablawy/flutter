import 'package:json_annotation/json_annotation.dart';
part 'send_verification_code.g.dart';

@JsonSerializable()
class SendVerificationCode {
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  SendVerificationCode({
    required this.phoneNumber,
  });

  Map<String, dynamic> toJson() => _$SendVerificationCodeToJson(this);
}
