import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';


class MobileHomeSectionFour extends StatefulWidget {
  const MobileHomeSectionFour({super.key});

  @override
  State<MobileHomeSectionFour> createState() => _MobileHomeSectionFourState();
}

class _MobileHomeSectionFourState extends State<MobileHomeSectionFour> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///txt about us
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:AppPadding.p40,left:40,right:20),
              child: Text(AppString.aboutUs1,
                style: GoogleFonts.inter(
                  textStyle: AllScreensConstant.customTextStyle(
                      MediaQuery.of(context).size.width / 11,
                      FontWeightManager.bold,
                      ColorManager.darkBlue),
                ),
              ),
            ),],
        ),
        const SizedBox(height: AppSize.s10),
        Text(
            AppString.everyYear,
            textAlign: TextAlign.center,
            style:AllScreensConstant.customTextStyle(
                MediaQuery.of(context).size.width/23,
                FontWeightManager.bold,
                ColorManager.black)
        ),
        // const SizedBox(height: AppSize.s30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: AppPadding.p10,left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OOO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeightManager.extraBold,
                        fontSize: MediaQuery.of(context).size.width/9,
                        fontFamily: FontConstants.fontFamily1,
                        color: ColorManager.skyBlue1),
                  ),
                  const SizedBox(height: AppSize.s8,),
                  Text(
                      AppString.successfullyProject,
                      textAlign: TextAlign.center,
                      style:AllScreensConstant.customTextStyle(
                          MediaQuery.of(context).size.width/40,
                          FontWeightManager.medium,
                          ColorManager.black)
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSize.s30,),
            Padding(

              padding: EdgeInsets.only(left:MediaQuery.of(context).size.width/100,top: AppPadding.p10),
              child: Column(
             //   crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: AppPadding.p30),
                    child: Text(
                      'OO',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeightManager.extraBold,
                        fontSize: MediaQuery.of(context).size.width/9,
                        fontFamily: FontConstants.fontFamily1,
                        color: ColorManager.skyBlue1,
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s5),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Text(
                        AppString.revenueGrowth,
                        textAlign: TextAlign.center,
                        style:AllScreensConstant.customTextStyle(
                            MediaQuery.of(context).size.width/40,
                            FontWeightManager.medium,
                            ColorManager.black)
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: AppSize.s30,),
            Padding(
              padding: EdgeInsets.only(left:  MediaQuery.of(context).size.width/100,top: AppPadding.p10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'OOO',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeightManager.extraBold,
                        fontSize: MediaQuery.of(context).size.width/9,
                        fontFamily: FontConstants.fontFamily1,
                        color: ColorManager.skyBlue1),
                  ),
                  const SizedBox(height: AppSize.s8),
                  Text(
                      AppString.trainingDays,
                      textAlign: TextAlign.center,
                      style:AllScreensConstant.customTextStyle(
                          MediaQuery.of(context).size.width/40,
                          FontWeightManager.medium,
                          ColorManager.black)

                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSize.s20),
      ],
    );
  }
}