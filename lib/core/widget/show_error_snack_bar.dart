// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../thems/thems.dart';
import 'text_utils.dart';

void showErrorSnackBar({required BuildContext context, required String title}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 3),
      backgroundColor: redClr.withOpacity(0.6),
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
              'assets/lottie/Animation - 1737365629148.json',
              width: 50,
              height: 50,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextUtils(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                  text: title),
            ),
          ),
        ],
      ),
    ),
  );
}
