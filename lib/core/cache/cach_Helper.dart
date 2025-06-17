import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();

    _prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> savemyChildrenId(String myChildrenId) async {
    try {
      return await _prefs?.setString('myChildrenId', myChildrenId) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getmyChildrenId() {
    try {
      return _prefs?.getString('myChildrenId') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  //

  static Future<bool> saveparentLogin(String parentLogin) async {
    try {
      return await _prefs?.setString('parentLogin', parentLogin) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getparentLogin() {
    try {
      return _prefs?.getString('parentLogin') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  static Future<bool> saveparentName(String parentName) async {
    try {
      return await _prefs?.setString('parentName', parentName) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getparentName() {
    try {
      return _prefs?.getString('parentName') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  //recent
  static Future<bool> saverecentList(
      List<Map<String, String>> recentList) async {
    try {
      // تحويل List<Map> إلى JSON String
      final jsonString = jsonEncode(recentList);
      return await _prefs?.setString('recentList', jsonString) ?? false;
    } catch (e) {
      print('Error saving recent list: $e');
      return false;
    }
  }

  static List<Map<String, String>> getrecentList() {
    try {
      final jsonString = _prefs?.getString('recentList');
      if (jsonString == null || jsonString.isEmpty) return [];

      // تحويل JSON String إلى List<dynamic> ثم إلى List<Map<String, String>>
      final list = jsonDecode(jsonString) as List;
      return list.map((item) => Map<String, String>.from(item)).toList();
    } catch (e) {
      print('Error getting recent list: $e');
      return [];
    }
  }

  static Future<bool> savemyChildrenName(String myChildrenName) async {
    try {
      return await _prefs?.setString('myChildrenName', myChildrenName) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getmyChildrenName() {
    try {
      return _prefs?.getString('myChildrenName') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  static Future<bool> savemyChildrenImage(String myChildrenImage) async {
    try {
      return await _prefs?.setString('myChildrenImage', myChildrenImage) ??
          false;
    } catch (e) {
      return false;
    }
  }

  static String getmyChildrenImage() {
    try {
      return _prefs?.getString('myChildrenImage') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  //isPin
  static Future<bool> saveisPin(String isPin) async {
    try {
      return await _prefs?.setString('isPin', isPin) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getisPin() {
    try {
      return _prefs?.getString('isPin') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  //save main color
  static Future<bool> saveMainColor(Color mainColor) async {
    try {
      // Save the color as an integer (using the `.value` property of Color)
      return await _prefs?.setInt('mainColor', mainColor.value) ?? false;
    } catch (e) {
      print("Error saving color: $e");
      return false;
    }
  }

  static Color getMainColor() {
    try {
      // Get the saved color value as an integer
      int colorValue = _prefs?.getInt('mainColor') ??
          Colors.white.value; // Default to white if not found
      // Convert the integer back to a Color object
      return Color(colorValue);
    } catch (e) {
      print("Error retrieving color: $e");
      return Colors.white; // Default to white if an error occurs
    }
  }

  //save User Data
  static Future<bool> saveUserName(String userName) async {
    try {
      return await _prefs?.setString('userName', userName) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getUserName() {
    try {
      return _prefs?.getString('userName') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  static Future<bool> saveUserEmail(String userEmail) async {
    try {
      return await _prefs?.setString('userEmail', userEmail) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getUserEmail() {
    try {
      return _prefs?.getString('userEmail') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  static Future<bool> saveUserPhoto(String userPhoto) async {
    try {
      return await _prefs?.setString('userPhoto', userPhoto) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getUserPhoto() {
    try {
      return _prefs?.getString('userPhoto') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  static Future<bool> saveUserId(String userId) async {
    try {
      return await _prefs?.setString('userId', userId) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getUserId() {
    try {
      return _prefs?.getString('userId') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  static Future<bool> savelang(String lang) async {
    try {
      return await _prefs?.setString('lang', lang) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getlang() {
    try {
      return _prefs?.getString('lang') ?? "";
    } catch (e) {
      // print(e);
      return "";
    }
  }

  static Future<bool> saveFcmTokn(String fcmTokn) async {
    try {
      return await _prefs?.setString('FCM', fcmTokn) ?? false;
    } catch (e) {
      return false;
    }
  }

  static String getFcmTokn() {
    try {
      return _prefs?.getString('FCM') ?? "";
    } catch (e) {
      return "";
    }
  }

  static clearShared() {
    _prefs?.clear();
  }
}
