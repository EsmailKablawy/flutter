import 'package:easy_localization/easy_localization.dart';
import 'package:event/core/widget/app_bar_utils.dart';
import 'package:event/features/chat/ui/widgets/chat_view_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarUtils(context: context, title: 'المحادثات'.tr()),
      body: const ChatViewBody(),
    );
  }
}
