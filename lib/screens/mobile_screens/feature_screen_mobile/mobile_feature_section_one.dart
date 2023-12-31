import 'package:flutter/material.dart';
import '../../constant_screens/mobile_constant/my_drawer.dart';
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
      height: AppSize.s400,
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

          ///Drawer
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: AppPadding.p20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyDrawer()),
                    );
                  },
                  child: Icon(
                    Icons.dehaze_rounded,
                    color: ColorManager.white,
                    size: MediaQuery.of(context).size.width / 15,
                  ),
                ),
              ),
            ],
          ),

          /// Content Column
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p80, left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///head txt 1
                Row(
                  children: [
                    Text(
                      AppString.featureScreenText1,
                      style: AllScreensConstant.customTextStyle(
                          MediaQuery.of(context).size.width / 25,
                          FontWeightManager.bold,
                          ColorManager.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),

                ///txt 2
                Row(
                  children: [
                    Text(
                      AppString.featureScreenText2,
                      textAlign: TextAlign.start,
                      style: AllScreensConstant.customTextStyle(
                          MediaQuery.of(context).size.width / 35,
                          FontWeightManager.medium,
                          ColorManager.lightBlue),
                    ),
                  ],
                ),
                const SizedBox(
                  height: AppSize.s30,
                ),

                ///button
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );
                        },
                        child: Text(AppString.readTxt,
                            style: RButtonTheme.roundedButtonTextStyle),
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
