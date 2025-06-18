import 'package:flutter/material.dart';

import '../../../../core/thems/thems.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/utils/image_path.dart';
import '../../../../core/widget/text_utils.dart';

class CustomProfileDetails extends StatelessWidget {
  const CustomProfileDetails({
    super.key,
    required this.image,
    required this.name,
    required this.email,
    this.hasIcon = false,
  });

  final String image;
  final String name;
  final String email;
  final bool hasIcon;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 130,
          width: 130,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(image, fit: BoxFit.fill),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: width * 0.03),
                  child: SizedBox(
                    height: 30,
                    width: 30,
                    child: hasIcon == true
                        ? Image.asset(ImagePath.edit, fit: BoxFit.scaleDown)
                        : const SizedBox(),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: width * 0.03),
        TextUtils(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: blackcolor,
            text: name),
        SizedBox(height: width * 0.015),
        TextUtils(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: kTextGrey,
            text: email),
      ],
    );
  }
}
