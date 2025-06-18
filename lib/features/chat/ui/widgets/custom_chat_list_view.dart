import 'package:flutter/material.dart';

import '../../../../core/utils/image_path.dart';
import 'custom_chat_item.dart';
import 'custom_invite_item.dart';

class CustomChatListView extends StatelessWidget {
  const CustomChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: width * 0.07),
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true, itemBuilder: (BuildContext context, int index) {
          return const CustomChatItem(
            image: ImagePath.avatar1,
            title: ' نادين احمد سيد ',
            subtitle:
            'Of course, we just added that to your order. Thanks for letting us know!',
          );
      },

      ),
    );
  }
}
