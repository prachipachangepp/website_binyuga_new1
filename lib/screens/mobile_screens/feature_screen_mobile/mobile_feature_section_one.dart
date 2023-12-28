import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../website_screens/landing_page_home.dart';


class MobileFeatureSectionOne extends StatelessWidget {
  const MobileFeatureSectionOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Background Image
          Image.asset(
            'images/what_we_do_home.png',
            fit: BoxFit.fill,
            height: AppSize.s720,
            width: MediaQuery.of(context).size.width,
          ),

          /// Content Column
          Padding(
            padding: EdgeInsets.only(
                top: AppPadding.p100,
                left:100 ),
            child: Column(
              children: [
                ///head txt 1
                Row(
                  children: [
                    Text(
                      AppString.featureScreenText1,
                      //  textAlign: TextAlign.end,
                      style: AllScreensConstant.customTextStyle(
                          MediaQuery.of(context).size.width / 28,
                          FontWeightManager.bold,
                          ColorManager.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),

                ///txt 2
                Padding(
                  padding: EdgeInsets.only(
                      left:100),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        AppString.featureScreenText2,
                        textAlign: TextAlign.start,
                        style: AllScreensConstant.customTextStyle(
                            MediaQuery.of(context).size.width /90,
                            FontWeightManager.medium,
                            ColorManager.lightBlue),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.s50,
                ),

                ///button
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 4),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const HomePage()),
                          );
                        },
                        child: Text(
                          AppString.readTxt,
                          style: TextStyle(
                            fontWeight: FontWeightManager.semiBold,
                            fontSize: FontSize.s15,
                            letterSpacing: -0.011,
                            color: ColorManager.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
