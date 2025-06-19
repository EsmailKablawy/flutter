import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/widget/animated_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/utils/image_path.dart';

import '../../../../core/widget/custom_app_bar.dart';
import '../../../../core/widget/custom_border_button.dart';
import 'custom_profile_details.dart';
import 'custom_profile_item.dart';
import 'custom_profile_items_box.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  Future<void> _shareApp() async {
    const String text = ' https://flutter.dev';
    await Share.share(text);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList.list(
            children: [
              const CustomProfileDetails(
                image: ImagePath.profileImage,
                hasIcon: true,
                name: 'نادين احمد سيد',
                email: 'nada22@gmail.com',
              ),
              verticalSpace(18),
              CustomProfileItemsBox(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.notificationView);
                    },
                    child: const CustomProfileItem(
                      text: 'الاشعارات',
                      iconPath: ImagePath.notification,
                      isSwitch: true,
                    ),
                  ),
                  CustomProfileItem(
                    text: 'المفضلة',
                    iconPath: ImagePath.favourite,
                    onIconTap: () {
                      Navigator.pushNamed(context, AppRoute.favoriteView);
                    },
                  ),
                  CustomProfileItem(
                    text: 'المحادثات',
                    iconPath: ImagePath.chat,
                    onIconTap: () {
                      Navigator.pushNamed(context, AppRoute.chatView);
                    },
                  ),
                ],
              ),
              SizedBox(height: width * 0.05),
              CustomProfileItemsBox(
                children: [
                  CustomProfileItem(
                    text: 'ادارة الحجوزات',
                    iconPath: ImagePath.reservationOrders,
                    onIconTap: () {
                      Navigator.pushNamed(context, AppRoute.reservationView);
                    },
                  ),
                  const CustomProfileItem(
                    text: 'اضافة بطاقة الدفع',
                    iconPath: ImagePath.creditCard,
                  ),
                  const CustomProfileItem(
                    text: 'عضوية العميل',
                    iconPath: ImagePath.diamond,
                  ),
                ],
              ),
              SizedBox(height: width * 0.05),
              CustomProfileItemsBox(
                children: [
                  const CustomProfileItem(
                    text: 'خدمة العملاء',
                    iconPath: ImagePath.userSupport,
                  ),
                  CustomProfileItem(
                    text: 'مشاركة التطبيق',
                    iconPath: ImagePath.share,
                    onIconTap: _shareApp,
                  ),
                  const CustomProfileItem(
                    text: 'اللغة العربية',
                    iconPath: ImagePath.globe,
                    isSwitch: true,
                  ),
                ],
              ),
              CustomBorderButton(
                text: 'تسجيل خروج',
                icon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: AnimatedSvgIcon(iconPath: 'assets/svgs/logout.svg')),
                onTap: () {
                  context.pushNamedAndRemoveUntil(
                    AppRoute.signUpScreen,
                    predicate: (route) => false,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
