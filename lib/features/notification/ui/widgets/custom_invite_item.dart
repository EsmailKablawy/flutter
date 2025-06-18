import 'package:flutter/material.dart';

import '../../../../core/thems/thems.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widget/text_utils.dart';
import 'custom_notification_button.dart';

class CustomInviteItem extends StatelessWidget {
  const CustomInviteItem({
    super.key,
    required this.inviteBody,
    required this.image,
  });

  final String inviteBody;
  final String image;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Container(
      height: width * 0.34,
      color: kPrimaryColor.withOpacity(0.2),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: width * 0.01,
          vertical: width * 0.03,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Image.asset(
                    image,
                    width: width * 0.135,
                    height: width * 0.135,
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextUtils(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: blackcolor,
                      text: inviteBody),
                  const Row(
                    children: [
                      CustomNotificationButton(text: 'القبول'),
                      CustomNotificationButton(text: 'الرفض', isAccept: false),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
