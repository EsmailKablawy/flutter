// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyRequestBody _$VerifyRequestBodyFromJson(Map<String, dynamic> json) =>
    VerifyRequestBody(
      phoneNumber: json['phone_number'] as String,
      verifyCode: json['verify_code'] as String,
    );

Map<String, dynamic> _$VerifyRequestBodyToJson(VerifyRequestBody instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'verify_code': instance.verifyCode,
    };
