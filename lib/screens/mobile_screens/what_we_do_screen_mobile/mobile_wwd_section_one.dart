import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../website_screens/landing_page_home.dart';

class MobileWWDSectionOne extends StatelessWidget {
  const MobileWWDSectionOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:300,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Background Image
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              'images/what_we_do_home.png',
              fit: BoxFit.fill,
              height: 300,
              width: MediaQuery.of(context).size.width,
            ),
          ),

          /// Content Column
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p70, left: AppPadding.p15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.homePageText1,
                  style: AllScreensConstant.customTextStyle(
                      FontSize.s20, FontWeightManager.bold, ColorManager.white),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Text(
                  AppString.homePageText2,
                  style: AllScreensConstant.customTextStyle(
                      8,
                      FontWeightManager.medium, ColorManager.lightBlue),
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                Padding(
                  padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height /50),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                    child: Text(
                      AppString.letsTalk,
                      style: AllScreensConstant.customTextStyle(
                          FontSize.s15,
                          FontWeightManager.medium,
                          ColorManager.black),
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///Image on the right side
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.45,
                top: 100),
            child: Image.asset(
              'images/digital_innovation.png',
              width: MediaQuery.of(context).size.width/1.8,
              height: 400,
            ),
          ),
        ],
      ),
    );
  }
}
