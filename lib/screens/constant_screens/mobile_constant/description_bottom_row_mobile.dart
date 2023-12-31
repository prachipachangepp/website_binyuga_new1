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
            style: BottomRowScreenMobile.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width /40),
        Text(AppString.cookiePolicy,
            style: BottomRowScreenMobile.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 40),
        Text(AppString.disclaimer,
            style: BottomRowScreenMobile.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 40),
        Text(AppString.securityPolicy,
            style: BottomRowScreenMobile.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 40),
        Text(AppString.californiaNoticeAtCollection,
            style: BottomRowScreenMobile.bottomRowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 40),
        Text(AppString.customizeCookies,
            style: BottomRowScreenMobile.bottomRowTextStyle(context)),
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
            style: LastDescriptionScreenHeadMobile.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 16),
        Text(AppString.whatWeDo,
            style: LastDescriptionScreenHeadMobile.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 10),
        Text(AppString.career,
            style: LastDescriptionScreenHeadMobile.rowTextStyle(context)),
        SizedBox(width: MediaQuery.of(context).size.width / 10),
        Text(AppString.features,
            style: LastDescriptionScreenHeadMobile.rowTextStyle(context)),
      ],
    );
  }
}
