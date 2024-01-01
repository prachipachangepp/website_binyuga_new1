///start page code
import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/constant_screens/mobile_constant/my_drawer.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../website_screens/career_home.dart';
import '../../website_screens/features_home.dart';
import '../../website_screens/landing_page_home.dart';
import '../career_page_mobile.dart';

class MobileHomeSectionOne extends StatefulWidget {
  const MobileHomeSectionOne({super.key});

  @override
  State<MobileHomeSectionOne> createState() => _MobileHomeSectionOneState();
}

class _MobileHomeSectionOneState extends State<MobileHomeSectionOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 420,
      child: Stack(
        children: [
          /// Base Image
          Image.asset(
            'images/team_member_bg.png',
            fit: BoxFit.fill,
            height: MediaQuery.of(context).size.height / 2.2,
            width: MediaQuery.of(context).size.width,
          ),

          ///boy img
          Padding(
            padding: EdgeInsets.only(left: 170, top: 120),
            child: Image.asset(
              "images/boy.png",
              //  height: MediaQuery.of(context).size.height / 1.3,
              height: AppSize.s490,
              width: MediaQuery.of(context).size.width / 2.2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0,left: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  MyDrawer()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(top:10),
                child: Icon(
                  Icons.dehaze_rounded,
                  color: ColorManager.white,
                  size: MediaQuery.of(context).size.width / 15,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: AppPadding.p80,
                left: MediaQuery.of(context).size.width /5.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppString.homesTxt1,
                    style: AllScreensConstant.customTextStyle(
                        MediaQuery.of(context).size.width / 20,
                        FontWeightManager.bold,
                        ColorManager.white)),
                const SizedBox(
                  height: AppSize.s10,
                ),

                ///hometxt 2
                Text(AppString.homesTxt2,
                    textAlign: TextAlign.start,
                    style: AllScreensConstant.customTextStyle(
                        MediaQuery.of(context).size.width /65,
                        FontWeightManager.medium,
                        ColorManager.lightBlue)),
                const SizedBox(
                  height: AppSize.s10,
                ),

                ///button
                MaterialButton(
                  color: ColorManager.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(30.0))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MobileCareerHomeScreen()),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        // vertical: AppPadding.p2,
                        horizontal:
                            MediaQuery.of(context).size.width / 100),
                    child: Text(
                      AppString.exploreMore,
                      //style: RButtonTheme.roundedButtonTextStyle,
                      style: TextStyle(
                          fontWeight: FontWeightManager.semiBold,
                          fontSize: FontSize.s13,
                          letterSpacing: -0.011,
                          color: ColorManager.black),
                    ),
                  ),
                ),
              ],
            ),
          ),

          ///divider
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 10,
              child: VerticalDivider(
                width: MediaQuery.of(context).size.width / 3.2,
                color: ColorManager.lightBlue,
                thickness: 2,
              ),
            ),
          ),
          const SizedBox(
            height: AppSize.s20,
          ),

          ///side 3 icons
          Padding(
            padding: EdgeInsets.only(
                top: AppPadding.p280,
                right: MediaQuery.of(context).size.width / 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CareerHomeScreen()),
                        );
                      },
                      child: Icon(
                        Icons.chevron_right,
                        color: ColorManager.lightBlue,
                        size: MediaQuery.of(context).size.width / 25,
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Icon(
                        Icons.pause,
                        color: ColorManager.lightBlue,
                        size: MediaQuery.of(context).size.width /
                            40, // Original size
                      ),
                    ),
                    const SizedBox(
                      height: AppSize.s20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FeaturesHomeScreen()),
                        );
                      },
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: ColorManager.lightBlue,
                        size: MediaQuery.of(context).size.width / 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// Binyuga logo
          Container(
            color: Colors.transparent,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 30),
                  child: Image.asset(
                    'images/binyuga_logo.png',
                    width: 120,
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
