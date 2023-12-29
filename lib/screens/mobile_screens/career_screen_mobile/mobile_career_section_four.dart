import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';


class MobileCareerSectionFour extends StatelessWidget {
  const MobileCareerSectionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: ColorManager.skyBlue1,
      child: Stack(
        children: [
          Image.asset(
            'images/background1.png',
            fit: BoxFit.fill,
            height: 400,
            width: MediaQuery.of(context).size.width,
          ),
          ///start txt
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  //left: MediaQuery.of(context).size.width / 90,
                  top: MediaQuery.of(context).size.height / 30,
                ),
                child: Text(
                    AppString.loremTxtM,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize:MediaQuery.of(context).size.width/27,
                      fontWeight: FontWeightManager.medium,
                      color: ColorManager.white,
                    )
                ),
              ),
            ],
          ),
          ///about us
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                   // left: MediaQuery.of(context).size.width / 10,
                    top: AppPadding.p190),
                child: Text(
                  AppString.aboutUs,
                  style: GoogleFonts.inter(
                    textStyle: TextStyle(
                      fontWeight: FontWeightManager.bold,
                      fontSize: MediaQuery.of(context).size.width / 8,
                      color: ColorManager.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ///containers
          Padding(
            padding: const EdgeInsets.only(top: 300,left: 20,right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
                        //width: 180,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: AppPadding.p25,
                          ),
                          child: Text(AppString.ourTxt,
                              textAlign: TextAlign.center,
                              style:
                              AllScreensConstant.customTextStyle(
                                  MediaQuery.of(context).size.width / 20,
                                  FontWeightManager.regular,
                                  ColorManager.white)

                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
                        // width: 180,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius:
                          const BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: AppPadding.p25,
                          ),
                          child: Text(AppString.nationTxt,
                              textAlign: TextAlign.center,
                              style: AllScreensConstant.customTextStyle(
                                  MediaQuery.of(context).size.width / 20,
                                  FontWeightManager.regular,
                                  ColorManager.white)
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
                        //  width: 180,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius: const BorderRadius.all(Radius.circular(35)),),
                        child: Padding(
                          padding: const EdgeInsets.only(top: AppPadding.p25,),
                          child: Text(AppString.diverTxt,
                              textAlign: TextAlign.center,
                              style: AllScreensConstant.customTextStyle(
                                  MediaQuery.of(context).size.width / 20,
                                  FontWeightManager.regular,
                                  ColorManager.white)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
                        // width: 180,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius: const BorderRadius.all(Radius.circular(35)),),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: AppPadding.p25,
                          ),
                          child: Text(AppString.devlopTxt,
                              textAlign: TextAlign.center,
                              style: AllScreensConstant.customTextStyle(
                                  MediaQuery.of(context).size.width / 20,
                                  FontWeightManager.regular,
                                  ColorManager.white)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
