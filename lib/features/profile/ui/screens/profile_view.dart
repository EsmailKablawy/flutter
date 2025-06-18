import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';
import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return const Scaffold(
        backgroundColor: kBackgroundColor, body: ProfileViewBody());
  }
}
