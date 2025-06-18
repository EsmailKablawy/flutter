import 'package:event/features/chat/ui/widgets/chat_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackgroundColor,
      body: ChatViewBody(),
    );
  }
}
