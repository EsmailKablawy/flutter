import 'package:flutter/material.dart';

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
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 4,
        crossAxisSpacing: width * 0.01,
        mainAxisSpacing: width * 0.01,
      ),
      itemBuilder: (context, index) {
        return  CustomGridViewItem(index: index,);
      },
    );
  }
}
