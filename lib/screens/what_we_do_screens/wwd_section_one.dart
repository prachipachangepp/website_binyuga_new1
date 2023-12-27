import 'package:flutter/material.dart';
import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';
import '../landing_page_home.dart';

class WWDSectionOne extends StatelessWidget {
  const WWDSectionOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s870,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Background Image
          Image.network(
            'images/what_we_do_home.png',
            fit: BoxFit.fill,
            height: AppSize.s720,
            width: MediaQuery.of(context).size.width,
          ),

          /// Content Column
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p30, left: AppPadding.p35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppString.homePageText1,
                  style: AllScreensConstant.customTextStyle(
                      FontSize.s50, FontWeightManager.bold, ColorManager.white),
                ),
                const SizedBox(
                  height: AppSize.s20,
                ),
                Text(
                  AppString.homePageText2,
                  style: AllScreensConstant.customTextStyle(FontSize.s17,
                      FontWeightManager.medium, ColorManager.lightBlue),
                ),
                const SizedBox(
                  height: AppSize.s80,
                ),
                ElevatedButton(
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
              ],
            ),
          ),

          ///Image on the right side
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.5,
                top: MediaQuery.of(context).size.height / 7),
            child: Image.network(
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
