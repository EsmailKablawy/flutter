import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_grid_view_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: width * 0.045),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.w,
          mainAxisSpacing: 20.w,
          mainAxisExtent: 220.w),
      itemBuilder: (context, index) {
        return CustomGridViewItem(
          index: index,
        );
      },
    );
  }
}
