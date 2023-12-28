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
  State<DescriptionScreenConstantMobile> createState() => _DescriptionScreenConstantMobileState();
}

class _DescriptionScreenConstantMobileState extends State<DescriptionScreenConstantMobile> {
  bool _isSearchBarVisible = false;
  final GlobalKey _searchKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s500,
      color: ColorManager.faintblack,
      child: Column(
        children: [
          ///heading
          Padding(
            padding: EdgeInsets.only(
                top: AppSize.s40, left: MediaQuery.of(context).size.width / 22),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [DescriptionPageHeadConstantMobile()],
            ),
          ),

          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 16,
                top: AppPadding.p20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///who we are
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.aboutUs,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.teamProfiles,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.clientTestimonials,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.partnerShips,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),

                ///what we do
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 85),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.softwareDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.applicationDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.webDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.uiUxDesigning,
                        textAlign: TextAlign.left,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.careerMonitoring,
                        textAlign: TextAlign.left,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.problemSolving,
                        textAlign: TextAlign.left,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),

                ///career
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 85,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.flutter,
                        textAlign: TextAlign.left,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.reactJs,
                        textAlign: TextAlign.left,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.uIUxDesigning,
                        textAlign: TextAlign.left,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.uiUxDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.backendDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.fullStackDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.softwareTesting,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.programmingLanguage,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),

                ///features
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 85,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.tailoredProducts,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.costEffectiveness,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.intuitiveUserCenterDesign,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.problemSolving,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.roughToughSoftware,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.innovativeProjects,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s100),

          ///bottom row
          Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 10,
              ),
              child: const DescriptionBottomRowConstant()),
        ],
      ),
    );
  }

}
