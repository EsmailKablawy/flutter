import 'package:flutter/material.dart';

import '../../../../core/utils/image_path.dart';
import 'custom_invite_item.dart';
import 'custom_notification_item.dart';

class CustomNotificationListView extends StatelessWidget {
  const CustomNotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: width * 0.07),
      child: ListView(
        shrinkWrap: true,
        children: const [
          CustomInviteItem(
            inviteBody:
                'تمت دعوتك من قبل نادين احمد الي حضور عيد ميلادها في الثامن من اكتوبر الساعة 11 م',
            image: ImagePath.avatar1,
          ),
          CustomNotificationItem(
            image: ImagePath.avatar1,
            title: 'وافق جنة احمد علي حضور مناسبة خاصة بك',
            subtitle: 'الأربعاء الماضي الساعة 9:42 صباحًا',
          ),
          CustomInviteItem(
            inviteBody:
                'تمت دعوتك من قبل نادين احمد الي حضور عيد ميلادها في الثامن من اكتوبر الساعة 11 م',
            image: ImagePath.avatar1,
          ),
        ],
      ),
    );
  }
}
