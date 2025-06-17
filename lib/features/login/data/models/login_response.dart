// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  bool status;
  String message;
  Data data;

  LoginResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  User user;
  String token;

  Data({
    required this.user,
    required this.token,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
      };
}

class User {
  int id;
  String firstName;
  String lastName;
  String username;
  dynamic identityId;
  dynamic phoneNumber;
  dynamic email;
  String image;
  String color;
  String verifyCode;
  String role;
  DateTime dateOfBirth;
  dynamic schoolName;
  dynamic gradeName;
  dynamic educationalStage;
  dynamic neighborhood;
  int parentId;
  dynamic parentType;
  String childType;
  int status;
  dynamic motherName;
  dynamic motherIdentityId;
  dynamic points;
  dynamic balance;
  DateTime createdAt;
  DateTime updatedAt;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.identityId,
    required this.phoneNumber,
    required this.email,
    required this.image,
    required this.color,
    required this.verifyCode,
    required this.role,
    required this.dateOfBirth,
    required this.schoolName,
    required this.gradeName,
    required this.educationalStage,
    required this.neighborhood,
    required this.parentId,
    required this.parentType,
    required this.childType,
    required this.status,
    required this.motherName,
    required this.motherIdentityId,
    required this.points,
    required this.balance,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        username: json["username"],
        identityId: json["identity_id"],
        phoneNumber: json["phone_number"],
        email: json["email"],
        image: json["image"],
        color: json["color"],
        verifyCode: json["verify_code"],
        role: json["role"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        schoolName: json["school_name"],
        gradeName: json["grade_name"],
        educationalStage: json["educational_stage"],
        neighborhood: json["neighborhood"],
        parentId: json["parent_id"],
        parentType: json["parent_type"],
        childType: json["child_type"],
        status: json["status"],
        motherName: json["mother_name"],
        motherIdentityId: json["mother_identity_id"],
        points: json["points"],
        balance: json["balance"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "username": username,
        "identity_id": identityId,
        "phone_number": phoneNumber,
        "email": email,
        "image": image,
        "color": color,
        "verify_code": verifyCode,
        "role": role,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "school_name": schoolName,
        "grade_name": gradeName,
        "educational_stage": educationalStage,
        "neighborhood": neighborhood,
        "parent_id": parentId,
        "parent_type": parentType,
        "child_type": childType,
        "status": status,
        "mother_name": motherName,
        "mother_identity_id": motherIdentityId,
        "points": points,
        "balance": balance,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
