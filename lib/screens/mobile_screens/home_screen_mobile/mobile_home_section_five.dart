import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileHomeSectionFive extends StatelessWidget {
  const MobileHomeSectionFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 470,
      color: ColorManager.white,
      child: Stack(
        children: [
          ///background image
          Row(
            children: [
              Image.asset(
                'images/team_member_bg.png',
                fit: BoxFit.fill,
                height: 212,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),

          ///txt 1,2
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.ourTeamMembers,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          textStyle: AllScreensConstant.customTextStyle(
                              MediaQuery.of(context).size.width / 14,
                              FontWeightManager.bold,


                              ColorManager.white),
                        )),
                  ],
                ),
                const SizedBox(height: AppSize.s30,),
                ///txt 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(AppString.teamTxt,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          textStyle: TextStyle(
                              fontWeight: FontWeightManager.medium,
                              fontSize: MediaQuery.of(context).size.width / 35,
                              color: ColorManager.blueShade),
                        )),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSize.s20,),

          ///cirle avtar row 1
          Padding(
            padding: EdgeInsets.only(
              top:155,
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
                      SizedBox(
                        height: 10 ,
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
                      SizedBox(
                        height: 10 ,
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
                      SizedBox(
                        height: 10 ,
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
            padding: const EdgeInsets.only(top:310),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width /6),
                        child: CircleAvatar(
                          backgroundColor: ColorManager.white1,
                          radius: MediaQuery.of(context).size.width / 10,
                        ),
                      ),
                      SizedBox(
                        height: AppSize.s20 ,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left:50 ),
                        child: Text(AppString.johnS,
                            style: TeamMemberConstant.nameTextStyle),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width /30,
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
                      Padding(
                        padding: const EdgeInsets.only(right:75),
                        child: CircleAvatar(
                          backgroundColor: ColorManager.white1,
                          radius: MediaQuery.of(context).size.width / 10,
                        ),
                      ),
                      SizedBox(
                        height: AppSize.s20 ,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:75),
                        child: Text(AppString.johnS,
                            style: TeamMemberConstant.nameTextStyle),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


