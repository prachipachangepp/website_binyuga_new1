import 'package:flutter/material.dart';
import '../../constant_screens/mobile_constant/app_filled_button.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../constant_screens/mobile_constant/my_drawer.dart';
import '../../website_screens/landing_page_home.dart';

class MobileWWDSectionOne extends StatelessWidget {
  const MobileWWDSectionOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height:AppSize.s300,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Background Image
          Padding(
            padding: const EdgeInsets.only(top:AppPadding.p10),
            child: Image.asset(
              'images/what_we_do_home.png',
              fit: BoxFit.fill,
              height:AppSize.s295,
              width: MediaQuery.of(context).size.width,
            ),
          ),
           ///Drawer
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:15,top:AppPadding.p20),
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
                  height: AppSize.s30,
                ),
                Text(
                  MobileAppString.mobilewwdSecondtxt,
                  style: AllScreensConstant.customTextStyle(
                      8,
                      FontWeightManager.medium, ColorManager.lightBlue),
                ),
                const SizedBox(
                  height: AppSize.s10,
                ),
                AppFilledButton(
                  onClick: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomePage()),
                  );},
                  text: AppString.letsTalk,
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 10,
                  ),
                  color: ColorManager.white,
                  textStyle: AllScreensConstant.customTextStyle(FontSize.s13,
                      FontWeightManager.bold, ColorManager.black),),
              ],
            ),
          ),

          ///Image on the right side
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.45,
                top:AppPadding.p80),
            child: Image.asset(
              'images/digital_innovation.png',
              width: MediaQuery.of(context).size.width/1.5,
              height:AppSize.s500,
            ),
          ),
        ],
      ),
    );
  }
}
