// To parse this JSON data, do
//
//     final instructorResponse = instructorResponseFromJson(jsonString);

import 'dart:convert';

InstructorResponse instructorResponseFromJson(String str) =>
    InstructorResponse.fromJson(json.decode(str));

String instructorResponseToJson(InstructorResponse data) =>
    json.encode(data.toJson());

class InstructorResponse {
  bool status;
  String message;
  Data data;

  InstructorResponse({
    required this.status,
    required this.message,
    required this.data,
  });

  factory InstructorResponse.fromJson(Map<String, dynamic> json) =>
      InstructorResponse(
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
  Instructor instructor;
  String token;
  String tokenType;
  int expiresIn;

  Data({
    required this.instructor,
    required this.token,
    required this.tokenType,
    required this.expiresIn,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        instructor: Instructor.fromJson(json["instructor"]),
        token: json["token"],
        tokenType: json["token_type"],
        expiresIn: json["expires_in"],
      );

  Map<String, dynamic> toJson() => {
        "instructor": instructor.toJson(),
        "token": token,
        "token_type": tokenType,
        "expires_in": expiresIn,
      };
}

class Instructor {
  int id;
  String firstName;
  String lastName;
  String image;
  DateTime dateOfBirth;
  String bio;
  String info;
  String status;
  String email;
  String phoneNumber;
  dynamic deletedAt;
  DateTime createdAt;
  DateTime updatedAt;

  Instructor({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.dateOfBirth,
    required this.bio,
    required this.info,
    required this.status,
    required this.email,
    required this.phoneNumber,
    required this.deletedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Instructor.fromJson(Map<String, dynamic> json) => Instructor(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        image: json["image"],
        dateOfBirth: DateTime.parse(json["date_of_birth"]),
        bio: json["bio"],
        info: json["info"],
        status: json["status"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        deletedAt: json["deleted_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "image": image,
        "date_of_birth":
            "${dateOfBirth.year.toString().padLeft(4, '0')}-${dateOfBirth.month.toString().padLeft(2, '0')}-${dateOfBirth.day.toString().padLeft(2, '0')}",
        "bio": bio,
        "info": info,
        "status": status,
        "email": email,
        "phone_number": phoneNumber,
        "deleted_at": deletedAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
