import 'package:json_annotation/json_annotation.dart';
part 'instructor_login_request_body.g.dart';

@JsonSerializable()
class InstructorLoginRequestBody {
  final String email;
  final String password;
  InstructorLoginRequestBody({required this.email, required this.password});

  Map<String, dynamic> toJson() => _$InstructorLoginRequestBodyToJson(this);
}
