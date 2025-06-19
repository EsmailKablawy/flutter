import 'package:event/core/helpers/extensions.dart';
import 'package:event/features/chat/ui/widgets/custom_chat_notification.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../../../../core/widget/text_utils.dart';

class CustomChatItem extends StatelessWidget {
  const CustomChatItem({
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
    return SizedBox(
      height: context.displayWidth * 0.24,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.displayWidth * 0.03,
          vertical: context.displayWidth * 0.022,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                image,
                width: context.displayWidth * 0.135,
                height: context.displayWidth * 0.135,
              ),
            ),
            Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextUtils(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: kTextColor,
                            text: title),
                      ),
                      const TextUtils(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: kTextColor,
                          text: '3:40 PM'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TextUtils(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: kPrimaryColor,
                            text: subtitle),
                      ),
                      const CustomNotificationButton(text: '2'),
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
