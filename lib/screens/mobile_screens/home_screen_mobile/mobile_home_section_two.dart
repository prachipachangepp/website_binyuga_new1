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
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(AppString.ourApproach,
                    style: AllScreensConstant.customTextStyle(
                        MediaQuery.of(context).size.width / 12,
                        FontWeightManager.bold,
                        ColorManager.darkBlue),
                  ),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     Padding(
            //       padding: EdgeInsets.only(
            //           left: MediaQuery.of(context).size.width / 30),
            //       child: Image.asset("images/inverted_start.png",
            //           width: MediaQuery.of(context).size.width / 20),
            //     ),
            //   ],
            // ),
            const SizedBox(height: AppSize.s20),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 13),
                  child: Center(
                    child: Text(
                      "Is driven by innovation and guided by user-friendly designs."
                          " We also have \na strong commitment to nurturing and educating emerging,"
                          "forward-\nthinking talent in the field.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        textStyle: AllScreensConstant.customTextStyle(
                          MediaQuery.of(context).size.width / 36,
                         FontWeightManager.bold,
                          ColorManager.black,),),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSize.s20),
            // Padding(
            //   padding:
            //   EdgeInsets.only(left: MediaQuery.of(context).size.width / 3),
            //   child: Image.asset(
            //     "images/inverted_end.png",
            //     width: MediaQuery.of(context).size.width / 20,
            //   ),
            // ),
            const SizedBox(height: 30),
          ],
        ),
      ]),
    );
  }
}
