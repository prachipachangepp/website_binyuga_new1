import 'package:flutter/material.dart';
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
      child: Stack(
        children: [
          Image.asset(
            'images/background1.png',
            fit: BoxFit.fill,
            height: AppSize.s400,
            width: MediaQuery.of(context).size.width,
          ),

          ///start txt
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 30,
                ),
                child: Text(AppString.loremTxtM,
                    textAlign: TextAlign.center,
                    style: CareerPageConstant.careerTextStyle(context)),
              ),
            ],
          ),

          ///about us
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: AppPadding.p190),
                child: Text(AppString.aboutUs,
                    style: CareerAboutTxtConstant.careerAboutTxtStyle(context)),
              ),
            ],
          ),

          ///containers
          Padding(
            padding: const EdgeInsets.only(
                top: AppPadding.p300, left: 20, right:AppPadding.p20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
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
                              style: AllScreensConstant.customTextStyle(
                                  MediaQuery.of(context).size.width / 20,
                                  FontWeightManager.regular,
                                  ColorManager.white)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
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
                                  ColorManager.white)),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: AppPadding.p25,
                          ),
                          child: Text(AppString.diverTxt,
                              textAlign: TextAlign.center,
                              style: AllScreensConstant.customTextStyle(
                                  MediaQuery.of(context).size.width / 20,
                                  FontWeightManager.regular,
                                  ColorManager.white)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Expanded(
                      child: Container(
                        height: AppSize.s187,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[700],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(35)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            top: AppPadding.p25,
                          ),
                          child: Text(AppString.devlopTxt,
                              textAlign: TextAlign.center,
                              style: AllScreensConstant.customTextStyle(
                                  MediaQuery.of(context).size.width / 20,
                                  FontWeightManager.regular,
                                  ColorManager.white)),
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
