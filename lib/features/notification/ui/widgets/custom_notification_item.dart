import 'package:flutter/material.dart';

import '../../../../core/thems/thems.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widget/text_utils.dart';

class CustomNotificationItem extends StatelessWidget {
  const CustomNotificationItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;
  final String image;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: width * 0.24,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.01,
          vertical: width * 0.03,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                image,
                width: width * 0.135,
                height: width * 0.135,
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtils(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: blackcolor,
                      text: title),
                  TextUtils(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: kTextGrey,
                      text: subtitle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
