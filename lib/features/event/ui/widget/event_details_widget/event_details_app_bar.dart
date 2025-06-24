import 'package:event/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/thems/thems.dart';

class EventDetailsAppBar extends StatelessWidget {
  const EventDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                  color: offWhiteClr.withOpacity(0.4), shape: BoxShape.circle),
              child: const Center(
                  child: Icon(
                Icons.arrow_back_outlined,
                color: whiteclr,
              )),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(12.w),
              decoration: BoxDecoration(
                  color: offWhiteClr.withOpacity(0.4), shape: BoxShape.circle),
              child:
                  Center(child: SvgPicture.asset('assets/svgs/bookmark.svg')),
            ),
          ),
        ],
      ),
    );
  }
}
