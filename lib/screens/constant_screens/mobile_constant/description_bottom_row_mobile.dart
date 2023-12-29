import 'package:flutter/material.dart';

import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';

class DescriptionBottomRowConstantMobile extends StatelessWidget {
  const DescriptionBottomRowConstantMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppString.privacyNotice,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width /15),
        Text(AppString.cookiePolicy,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 15),
        Text(AppString.disclaimer,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 15),
        Text(AppString.securityPolicy,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 15),
        Text(AppString.californiaNoticeAtCollection,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 15),
        Text(AppString.customizeCookies,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 15),
      ],
    );
  }
}

class DescriptionPageHeadConstantMobile extends StatelessWidget {
  const DescriptionPageHeadConstantMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppString.whatWeAre,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 16),
        Text(AppString.whatWeDo,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 10),
        Text(AppString.career,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 10),
        Text(AppString.features,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 10),
        // Text(AppString.contact,
        //     style: LastDescriptionScreen.rowTextStyle(context)),
        // SizedBox(width: MediaQuery.of(context).size.width /10),
      ],
    );
  }
}
