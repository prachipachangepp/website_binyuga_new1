import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileHomeSectionTwo extends StatelessWidget {
  const MobileHomeSectionTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppString.ourApproach,
                  style: AllScreensConstant.customTextStyle(
                      MediaQuery.of(context).size.width / 12,
                      FontWeightManager.bold,
                      ColorManager.darkBlue),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left:20,top:10),
                  child: Image.asset("images/inverted_start.png",
                      width: MediaQuery.of(context).size.width / 20
                  ),
                ),
              ],
            ),
            //const SizedBox(height: AppSize.s10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Is driven by innovation and guided by user-friendly designs.\n"
                      " We also have a strong commitment to nurturing and educating\nemerging,"
                      "forward-thinking talent in the field.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: AllScreensConstant.customTextStyle(
                      MediaQuery.of(context).size.width / 35,
                     FontWeightManager.bold,
                      ColorManager.black,),),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                  EdgeInsets.only(right:70,bottom: 25),
                  child: Image.asset(
                    "images/inverted_end.png",
                    width: MediaQuery.of(context).size.width / 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
