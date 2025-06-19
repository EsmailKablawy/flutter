import 'package:event/core/widget/padding_utils.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/image_path.dart';
import 'custom_chat_item.dart';

class CustomChatListView extends StatelessWidget {
  const CustomChatListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingUtils(),
      child: ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
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
