// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_with_password_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginWithPasswordRequestBody _$LoginWithPasswordRequestBodyFromJson(
        Map<String, dynamic> json) =>
    LoginWithPasswordRequestBody(
      phone: json['phone'] as String,
      loginMethod: json['login_method'] as String,
      deviceId: json['device_id'] as String,
      deviceType: json['device_type'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$LoginWithPasswordRequestBodyToJson(
        LoginWithPasswordRequestBody instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'login_method': instance.loginMethod,
      'device_type': instance.deviceType,
      'device_id': instance.deviceId,
      'password': instance.password,
    };
