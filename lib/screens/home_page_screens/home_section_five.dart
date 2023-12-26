import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class HomeSectionFive extends StatelessWidget {
  const HomeSectionFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s1400,
      color: ColorManager.white,
      child: Stack(
        children: [
          ///background image
          Row(
            children: [
              Image.network(
                'images/team_member_bg.png',
                fit: BoxFit.fill,
                height: AppSize.s600,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),

          ///txt 1
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width / 10,
                  left: MediaQuery.of(context).size.width / 5,
                ),
                child: Text(AppString.ourTeamMembers,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: AllScreensConstant.customTextStyle(
                          MediaQuery.of(context).size.width / 29,
                          FontWeightManager.bold,
                          ColorManager.white),
                    )),
              ),
              const SizedBox(height: AppSize.s10,),

              ///txt 2
              Padding(
                padding:  EdgeInsets.only(top: AppSize.s50, left: MediaQuery.of(context).size.width / 5,),
                child: Text(AppString.teamTxt,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: TextStyle(
                          fontWeight: FontWeightManager.medium,
                          fontSize: MediaQuery.of(context).size.width / 45,
                          color: ColorManager.blueShade),
                    )),
              ),
            ],
          ),
          const SizedBox(height: AppSize.s20,),

          ///cirle avtar row 1
          Padding(
            padding: const EdgeInsets.only(
              top: AppPadding.p430,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorManager.white1,
                        radius: MediaQuery.of(context).size.width / 10,
                      ),
                      Text(AppString.johnS,
                          style: TeamMemberConstant.nameTextStyle),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ],
                  ),
                ),


                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorManager.white1,
                        radius: MediaQuery.of(context).size.width / 10,
                      ),
                      Text(AppString.johnS,
                          style: TeamMemberConstant.nameTextStyle),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorManager.white1,
                        radius: MediaQuery.of(context).size.width / 10,
                      ),
                      Text(AppString.johnS,
                          style: TeamMemberConstant.nameTextStyle),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s10,),

          ///cirle avtar row 2
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 10,
                top: AppPadding.p800),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorManager.white1,
                        radius: MediaQuery.of(context).size.width / 10,
                      ),
                      Text(AppString.johnS,
                          style: TeamMemberConstant.nameTextStyle),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 5,
                      ),
                    ],
                  ),
                ),
                // const SizedBox(
                //   height: AppSize.s20,
                // ),
                Expanded(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: ColorManager.white1,
                        radius: MediaQuery.of(context).size.width / 10,
                      ),
                      Text(AppString.johnS,
                          style: TeamMemberConstant.nameTextStyle),
                    ],
                  ),
                ),
                const SizedBox(height: AppSize.s50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}