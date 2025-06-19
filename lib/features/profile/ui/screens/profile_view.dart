import 'package:event/core/widget/main_app_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: mainAppBar(context: context, title: ''),
        body: const ProfileViewBody());
  }
}
