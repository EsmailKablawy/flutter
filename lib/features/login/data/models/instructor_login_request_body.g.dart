// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructor_login_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstructorLoginRequestBody _$InstructorLoginRequestBodyFromJson(
        Map<String, dynamic> json) =>
    InstructorLoginRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$InstructorLoginRequestBodyToJson(
        InstructorLoginRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
