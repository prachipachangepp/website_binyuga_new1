import 'package:flutter/material.dart';

import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';

class DescriptionBottomRowConstant extends StatelessWidget {
  const DescriptionBottomRowConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppString.privacyNotice,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 25),
        Text(AppString.cookiePolicy,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 25),
        Text(AppString.disclaimer,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 25),
        Text(AppString.securityPolicy,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 25),
        Text(AppString.californiaNoticeAtCollection,
            style: BottomRowScreen.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 25),
        Text(AppString.customizeCookies,
            style: BottomRowScreen.bottomRowTextStyle(context)),
      ],
    );
  }
}

class DescriptionPageHeadConstant extends StatelessWidget{
  const DescriptionPageHeadConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(AppString.whatWeAre,
            style:LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 15),
        Text(AppString.whatWeDo,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 10),
        Text(AppString.career,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 7),
        Text(AppString.features,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 7),
        Text(AppString.contact,
            style: LastDescriptionScreen.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width /10),
      ],
    );
  }
}