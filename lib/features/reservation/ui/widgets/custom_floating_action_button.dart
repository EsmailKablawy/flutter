import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/widget/text_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import 'custom_icon_button_with_opacity.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width * 0.12,
        vertical: width * 0.02,
      ),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: width * 0.15,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10, offset: Offset(0, 5))
            ],
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: context.displayWidth * 0.07),
                child: CustomIconButtonWithOpacity(
                  icon: Icon(
                    CupertinoIcons.plus,
                    color: Colors.white,
                    size: context.displayWidth * 0.04,
                  ),
                ),
              ),
              const TextUtils(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
                text: 'اضافة خدمة',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
