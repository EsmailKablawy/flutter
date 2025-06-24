import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class CustomProfileItemsBox extends StatelessWidget {
  const CustomProfileItemsBox({super.key, required this.children});

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.045),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: kTextGrey.withOpacity(0.15)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 4,
            spreadRadius: 5,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(mainAxisSize: MainAxisSize.min, children: children),
      ),
    );
  }
}
