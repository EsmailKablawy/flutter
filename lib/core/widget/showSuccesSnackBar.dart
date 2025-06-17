// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../thems/thems.dart';
import 'text_utils.dart';

void showSuccesSnackBar(
    {required BuildContext context, required String title}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 3),
      backgroundColor: mainColor.withOpacity(0.6),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: mainColor, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      content: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Lottie.asset(
              'assets/lottie/Animation - 1712410608562.json',
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0.w),
                child: TextUtils(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    text: title)),
          ),
        ],
      ),
    ),
  );
}
