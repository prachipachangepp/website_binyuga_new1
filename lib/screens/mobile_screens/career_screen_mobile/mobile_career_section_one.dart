import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';
import '../../constant_screens/mobile_constant/app_filled_button.dart';
import '../../constant_screens/mobile_constant/my_drawer.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../website_screens/landing_page_home.dart';
import '../home_screen_mobile/mobile_home_section_one.dart';

class MobileCareerSectionOne extends StatelessWidget {
  const MobileCareerSectionOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: Stack(
        children: [
          Image.asset(
            'images/background.png',
            fit: BoxFit.fill,
            height: AppSize.s270,
            width: MediaQuery.of(context).size.width,
          ),

          ///girl image
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p80, left: AppPadding.p160),
            child: Image.asset(
              "images/girl_img.png",
              height: AppSize.s300,
              width: AppSize.s200,
            ),
          ),
          const SizedBox(height: AppSize.s20,),

          ///Drawer
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: AppPadding.p10, top: AppPadding.p20),
                child: GestureDetector(
                  onTap: () {
                    showDialog(context: context,builder: (BuildContext context)=>
                        Row(mainAxisAlignment: MainAxisAlignment.start, children: [MyDrawer()]));
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
          const SizedBox(height: AppPadding.p20),
          Padding(
            padding: const EdgeInsets.only(
              top: AppPadding.p60,
              left: AppPadding.p40,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(AppString.moldYour,
                        style: AllScreensConstant.customTextStyle(
                            MediaQuery.of(context).size.width / 22,
                            FontWeightManager.bold,
                            ColorManager.white)),
                  ],
                ),
                const SizedBox(height: AppSize.s35,),
                ///btn
                Row(
                  children: [
                    AppFilledButton(
                      onClick: (){ Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );},
                      text: AppString.applyTxt,
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                      color: ColorManager.white,
                      textStyle: AllScreensConstant.customTextStyle(FontSize.s13,
                          FontWeightManager.bold, ColorManager.black),),
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
