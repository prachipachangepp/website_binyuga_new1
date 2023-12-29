import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../website_constant/description_bottom_row.dart';
import 'description_bottom_row_mobile.dart';

class DescriptionScreenConstantMobile extends StatefulWidget {
  const DescriptionScreenConstantMobile({super.key});

  @override
  State<DescriptionScreenConstantMobile> createState() =>
      _DescriptionScreenConstantMobileState();
}

class _DescriptionScreenConstantMobileState
    extends State<DescriptionScreenConstantMobile> {
  bool _isSearchBarVisible = false;
  final GlobalKey _searchKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: ColorManager.purple,
      child: Padding(
        padding: EdgeInsets.only(top: AppPadding.p100,),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    AppString.whoWeAre,
                    style: LastDescriptionScreenHeadMobile.rowTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.aboutUs,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.teamProfiles,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.clientTestimonials,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              ///what we do
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppString.whatWeDo,
                    style: LastDescriptionScreenHeadMobile.rowTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.softwareDevelopment,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.webDevelopment,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.uiUxDesigning,
                    textAlign: TextAlign.left,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 15,
              ),
              ///career
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppString.career,
                    style: LastDescriptionScreenHeadMobile.rowTextStyle(context),

                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.fullStackDevelopment,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.softwareTesting,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.programmingLanguage,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 15,
              ),
              ///features
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    AppString.features,
                    style: LastDescriptionScreenHeadMobile.rowTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.tailoredProducts,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.costEffectiveness,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                  const SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    AppString.problemSolving,
                    style: LastColumnScreenMobile.columnTextStyle(context),
                  ),
                ],
              ),
            ],),
            const SizedBox(
              height: AppSize.s100,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              DescriptionBottomRowConstantMobile()
            ],),
          ],
        ),
      ),
    );
  }
}
