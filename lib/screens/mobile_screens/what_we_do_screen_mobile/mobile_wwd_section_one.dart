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
      height:400,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Background Image
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset(
              'images/what_we_do_home.png',
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.width / 0.1,
              width: MediaQuery.of(context).size.width,
            ),
          ),

          /// Content Column
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p100, left: AppPadding.p35),
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
                  style: AllScreensConstant.customTextStyle(FontSize.s5,
                      FontWeightManager.medium, ColorManager.lightBlue),
                ),
                const SizedBox(
                  height: AppSize.s80,
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
                left: MediaQuery.of(context).size.width / 2.5,
                top: MediaQuery.of(context).size.height / 7),
            child: Image.asset(
              'images/digital_innovation.png',
              width: AppSize.s870,
              height: AppPadding.p700,
            ),
          ),
        ],
      ),
    );
  }
}
