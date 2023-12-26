import 'package:flutter/material.dart';
import '../../presentation/color_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';
import 'description_bottom_row.dart';

class DescriptionScreenConstant extends StatelessWidget {
  const DescriptionScreenConstant({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s780,
      color: ColorManager.faintblack,
      child: Column(
        children: [
          ///logo, search
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 50,
                ),
                child: Image.asset(
                  "images/binyuga_logo.png",
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 90,
                ),
                child: Image.asset(
                  "images/search.png",
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 10,
          ),

          ///heading
          Padding(
            padding: EdgeInsets.only(
                top: AppSize.s70, left: MediaQuery.of(context).size.width / 14),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [DescriptionPageHeadConstant()],
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
                      left: MediaQuery.of(context).size.width / 85),
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

                ///contact
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 85,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.nameRegisterOfficeAddress,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.requestForServices,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.corporateIdentityNumber,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.submitYourResume,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.jobSeekers,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.clients,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.otherEnquiries,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.emailId,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s15,
                      ),
                      Text(
                        AppString.connectWithUs,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s200),

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
