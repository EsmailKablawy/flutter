import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../thems/thems.dart';

class LoadButtonUtils extends StatelessWidget {
  const LoadButtonUtils({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.displayWidth / 1,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: const Size(300, 55),
              backgroundColor: mainColor.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: mainColor),
                  borderRadius: BorderRadius.circular(48))),
          onPressed: () {},
          child: Lottie.asset('assets/lottie/Animation - 1723982024442.json',
              height: 50, width: 50, fit: BoxFit.contain)),
    );
  }
}
