import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';


class CareerSectionFour extends StatelessWidget {
  const CareerSectionFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Image.network(
              'images/background1.png',
              fit: BoxFit.fill,
              height: AppSize.s720,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 12,
                  top: AppPadding.p400),
              child: Text(
                AppString.aboutUs,
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontWeight: FontWeightManager.bold,
                    fontSize: MediaQuery.of(context).size.width / 25,
                    color: ColorManager.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: AppPadding.p530),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 15,
                      right: MediaQuery.of(context).size.width / 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Container(
                            height: AppSize.s300,
                            //width: 180,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[700],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: AppPadding.p25,
                              ),
                              child: Text(AppString.ourTxt,
                                textAlign: TextAlign.center,
                                  style:
                                  AllScreensConstant.customTextStyle(
                                      MediaQuery.of(context).size.width / 100,
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
                            height: AppSize.s300,
                            // width: 180,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[700],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: AppPadding.p25,
                              ),
                              child: Text(AppString.nationTxt,
                                textAlign: TextAlign.center,
                                  style: AllScreensConstant.customTextStyle(
                                      MediaQuery.of(context).size.width / 100,
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
                            height: AppSize.s300,
                            //  width: 180,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[700],
                              borderRadius: const BorderRadius.all(Radius.circular(15)),),
                            child: Padding(
                              padding: const EdgeInsets.only(top: AppPadding.p25,),
                              child: Text(AppString.diverTxt,
                                textAlign: TextAlign.center,
                                  style: AllScreensConstant.customTextStyle(
                                      MediaQuery.of(context).size.width / 100,
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
                            height: AppSize.s300,
                            // width: 180,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey[700],
                              borderRadius: const BorderRadius.all(Radius.circular(15)),),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                top: AppPadding.p25,
                              ),
                              child: Text(AppString.devlopTxt,
                                textAlign: TextAlign.center,
                                  style: AllScreensConstant.customTextStyle(
                                      MediaQuery.of(context).size.width / 100,
                                      FontWeightManager.regular,
                                      ColorManager.white)
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: AppPadding.p25, right: MediaQuery.of(context).size.width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(AppPadding.p8),
                    child: Image.network(
                      "images/line2.png",
                      height: AppSize.s320,
                    ),
                  ),
                  const SizedBox(
                    width: AppSize.s20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 90,
                      top: MediaQuery.of(context).size.height / 20,
                    ),
                    child: Text(
                      AppString.loremTxt,
                      style: CareerPageConstant.careerTextStyle(context),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
