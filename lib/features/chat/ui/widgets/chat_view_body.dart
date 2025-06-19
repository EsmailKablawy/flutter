import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/features/chat/ui/widgets/custom_chat_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/filter_tabs.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: verticalSpace(10)),
          SliverToBoxAdapter(
            child: SizedBox(
              height: context.displayWidth * 0.1,
              child: FilterTabs(
                tabs: const ['الكل', 'مقروءة', 'غير مقروءة'],
                onTabSelected: (index) {},
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomChatListView(),
          ),
        ],
      ),
    );
  }
}
