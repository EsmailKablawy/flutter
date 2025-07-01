import 'package:event/core/helpers/extensions.dart';
import 'package:event/core/helpers/spacing.dart';
import 'package:event/core/thems/thems.dart';
import 'package:event/core/widget/padding_utils.dart';
import 'package:event/features/home/ui/widget/home_app_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widget/events_widget.dart';
import '../widget/my_service_widget.dart';
import '../widget/new_arrive_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // appBar
            const HomeAppBarWidget(),

            Container(
              padding: paddingUtils(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //events
                  const EventsWidget(),
                  verticalSpace(10),
                  //my Services
                  const MyServiceWidget(),
                  verticalSpace(20),
                  Divider(
                    color: greyClr.withOpacity(0.4),
                  ),

                  verticalSpace(10),
                  //invitaitions
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/invite.png',
                        width: context.displayWidth / 1.2,
                      )
                    ],
                  ),
                  Divider(
                    color: greyClr.withOpacity(0.4),
                  ),
                  verticalSpace(10),

                  //bannar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Banner.png',
                        width: context.displayWidth / 1.2,
                      )
                    ],
                  ),
                  verticalSpace(20),
                  //new arrived
                  const NewArriveWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
