import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/thems/thems.dart';
import '../../../../core/utils/colors.dart';
import '../../../../core/widget/text_utils.dart';

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem({
    super.key,
    required this.text,
    required this.iconPath,
    this.onIconTap,
    this.isSwitch = false,
    this.switchController,
  });

  final String text;
  final String iconPath;
  final bool isSwitch;
  final Function()? onIconTap;

  /// Allows external control of the switch
  final ValueNotifier<bool>? switchController;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final controller = switchController ?? ValueNotifier<bool>(false);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onIconTap,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: SvgPicture.asset(iconPath, height: width * 0.06),
            ),
            TextUtils(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: blackcolor,
                text: text),
            const Spacer(),
            isSwitch == true
                ? Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: AdvancedSwitch(
                      controller: controller,
                      activeColor: kPrimaryColor,
                      inactiveColor: kTextGrey,
                      width: width * 0.08,
                      height: width * 0.043,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                  )
                : GestureDetector(
                    onTap: onIconTap,
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: width * 0.04,
                      color: kTextGrey,
                    ),
                  ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
