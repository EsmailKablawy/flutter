import 'package:event/core/helpers/spacing.dart';

import 'package:flutter/material.dart';

import '../../../../../core/widget/padding_utils.dart';
import '../../../../../core/widget/slide_enimation_widget.dart';
import '../../widget/my_occasions_widget/my_occasions_data.dart';

class MyOccasionsScreen extends StatelessWidget {
  const MyOccasionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: paddingUtils(),
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Column(
                  children: [
                    SlideEnimationWidget(
                        index: index, child: const MyOccasionsData()),
                    verticalSpace(12)
                  ],
                ), // بيعرض العناصر عند الحاجة فقط
                childCount: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
