// To parse this JSON data, do
//
//     final LoginwithPasswordResponse = LoginwithPasswordResponseFromJson(jsonString);

import 'dart:convert';

LoginwithPasswordResponse LoginwithPasswordResponseFromJson(String str) =>
    LoginwithPasswordResponse.fromJson(json.decode(str));

String LoginwithPasswordResponseToJson(LoginwithPasswordResponse data) =>
    json.encode(data.toJson());

class LoginwithPasswordResponse {
  Data data;
  String message;
  int statusCode;

  LoginwithPasswordResponse({
    required this.data,
    required this.message,
    required this.statusCode,
  });

  factory LoginwithPasswordResponse.fromJson(Map<String, dynamic> json) =>
      LoginwithPasswordResponse(
        data: Data.fromJson(json["data"]),
        message: json["message"],
        statusCode: json["status_code"],
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
        "status_code": statusCode,
      };
}

class Data {
  String accessToken;
  String refreshToken;

  Data({
    required this.accessToken,
    required this.refreshToken,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "refreshToken": refreshToken,
      };
}

class User {
  int id;
  String gid;
  dynamic socialProvider;
  dynamic socialToken;
  dynamic firstName;
  dynamic lastName;
  String wallet;
  dynamic image;
  dynamic longitude;
  dynamic latitude;
  String phone;
  dynamic email;
  dynamic phoneVerifiedAt;
  dynamic emailVerifiedAt;
  dynamic dateOfBirth;
  dynamic licenseImage;
  dynamic licenseNumber;
  dynamic idFrontImage;
  dynamic idBackImage;
  dynamic criminalRecordImage;
  dynamic paymentMethod;
  dynamic governorate;
  dynamic nearestLab;
  String loginType;
  String deviceType;
  String deviceId;
  int status;

  bool isProfileComplete;

  User({
    required this.id,
    required this.gid,
    required this.socialProvider,
    required this.socialToken,
    required this.firstName,
    required this.lastName,
    required this.wallet,
    required this.image,
    required this.longitude,
    required this.latitude,
    required this.phone,
    required this.email,
    required this.phoneVerifiedAt,
    required this.emailVerifiedAt,
    required this.dateOfBirth,
    required this.licenseImage,
    required this.licenseNumber,
    required this.idFrontImage,
    required this.idBackImage,
    required this.criminalRecordImage,
    required this.paymentMethod,
    required this.governorate,
    required this.nearestLab,
    required this.loginType,
    required this.deviceType,
    required this.deviceId,
    required this.status,
    required this.isProfileComplete,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        gid: json["gid"],
        socialProvider: json["social_provider"],
        socialToken: json["social_token"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        wallet: json["wallet"],
        image: json["image"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        phone: json["phone"],
        email: json["email"],
        phoneVerifiedAt: json["phone_verified_at"],
        emailVerifiedAt: json["email_verified_at"],
        dateOfBirth: json["date_of_birth"],
        licenseImage: json["license_image"],
        licenseNumber: json["license_number"],
        idFrontImage: json["id_front_image"],
        idBackImage: json["id_back_image"],
        criminalRecordImage: json["criminal_record_image"],
        paymentMethod: json["payment_method"],
        governorate: json["governorate"],
        nearestLab: json["nearest_lab"],
        loginType: json["login_type"],
        deviceType: json["device_type"],
        deviceId: json["device_id"],
        status: json["status"],
        isProfileComplete: json["is_profile_complete"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "gid": gid,
        "social_provider": socialProvider,
        "social_token": socialToken,
        "first_name": firstName,
        "last_name": lastName,
        "wallet": wallet,
        "image": image,
        "longitude": longitude,
        "latitude": latitude,
        "phone": phone,
        "email": email,
        "phone_verified_at": phoneVerifiedAt,
        "email_verified_at": emailVerifiedAt,
        "date_of_birth": dateOfBirth,
        "license_image": licenseImage,
        "license_number": licenseNumber,
        "id_front_image": idFrontImage,
        "id_back_image": idBackImage,
        "criminal_record_image": criminalRecordImage,
        "payment_method": paymentMethod,
        "governorate": governorate,
        "nearest_lab": nearestLab,
        "login_type": loginType,
        "device_type": deviceType,
        "device_id": deviceId,
        "status": status,
        "is_profile_complete": isProfileComplete,
      };
}
