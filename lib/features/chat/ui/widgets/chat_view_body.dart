import 'package:event/core/helpers/extensions.dart';
import 'package:event/features/chat/ui/widgets/custom_chat_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/filter_tabs.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(height: context.displayWidth * 0.08)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.displayWidth * 0.045),
              child: CustomAppBar(
                hasText: true,
                text: 'المحادثات',
                onRightTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: SizedBox(height: context.displayWidth * 0.08)),
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
            child:
                // EmptyScreen(
                //     isPngImg: true,
                //     hasButton: true,
                //     onButtonTap: () {
                //       Navigator.pop(context);
                //     },
                //     buttonText: 'العودة الي الرئيسية',
                //     icon: ImagePath.noChatImage,
                //     title: 'لاتوجد منتجات محادثات الان !',
                //     desc:
                //         ' لا توجد محادثات حتى الآن؛ ابدأ بمحادثتك الأولى لتفعيل التواصل.')),
                CustomChatListView(),
          ),
        ],
      ),
    );
  }
}
