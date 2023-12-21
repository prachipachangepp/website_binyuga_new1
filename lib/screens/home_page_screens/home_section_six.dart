import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../constant_screens/description_page_constant.dart';



class HomeSectionSix extends StatefulWidget {
  const HomeSectionSix({super.key});
  @override
  State<HomeSectionSix> createState() => _HomeSectionSixState();
}

class _HomeSectionSixState extends State<HomeSectionSix> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.nevyBlue,
      // height:AppSize.s1000,
      height: 1000,
      child:Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.width/48,),
                  child: Image.asset(
                    "images/binyuga_logo.png",
                  ),
                ),
                Spacer(),
                Padding(
                  padding:  EdgeInsets.only( top:MediaQuery.of(context).size.width/48,right:250),
                  child: Image.asset(
                    "images/search.png",
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/100,),
            Padding(
              padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width/10,),
              child: Row(
                children: [
                  ///who we are
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/85,bottom:150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            AppString.whoWeAre,
                            style: LastDescriptionScreen.rowTextStyle(context)
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.aboutUs,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15, ),
                        Text(
                          AppString.teamProfiles,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: 15),
                        Text(
                          AppString.clientTestimonials,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                      ],
                    ),
                  ),
                  SizedBox(width:  MediaQuery.of(context).size.width/13,),
                  ///what we do
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width/85,bottom:150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top:60),
                          child: Text(
                              AppString.whatWeDo,
                              style: LastDescriptionScreen.rowTextStyle(context)
                          ),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.softwareDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height:  AppSize.s15,),
                        Text(
                          AppString.applicationDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height:  AppSize.s15,),
                        Text(
                          AppString.webDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height:  AppSize.s15,),
                        Text(
                          AppString.uiUxDesigning,
                          textAlign: TextAlign.left,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height:AppSize.s15, ),
                        Text(
                          AppString.careerMonitoring,
                          textAlign: TextAlign.left,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/13,),
                  ///career
                  Padding(
                    padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/85,bottom:150 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 120),
                          child: Text(
                              AppString.careerC,
                              style: LastDescriptionScreen.rowTextStyle(context)
                          ),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.hybridApplicationDeveloper,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.uIUxDesigning,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.uiUxDevelopment,
                          style:LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.backendDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.fullStackDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.softwareTesting,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.programmingLanguage,
                          style:LastColumnScreen.columnTextStyle(context),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width/13,),
                  ///features
                  Padding(
                    padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/85,bottom:150),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 100),
                          child: Text(
                              AppString.featuresF,
                              style: LastDescriptionScreen.rowTextStyle(context)
                          ),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.tailoredProducts,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.costEffectiveness,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.intuitiveUserCenterDesign,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height:AppSize.s15,),
                        Text(
                          AppString.problemSolving,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.roughToughSoftware,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        SizedBox(height: AppSize.s15,),
                        Text(
                          AppString.innovativeProjects,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height/10,),
            ///bottom row
            Padding(
                padding:  EdgeInsets.only(left:MediaQuery.of(context).size.width/10,bottom:30),
                child: DescriptionBottomRowConstant()
            ),

          ],
        ),
      ),
    );
  }
}

