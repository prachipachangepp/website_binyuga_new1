///start page code

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/my_drawer.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../constant_screens/website_constant/description_page_constant.dart';
import '../../website_screens/career_home.dart';
import '../../website_screens/features_home.dart';
import '../../website_screens/landing_page_home.dart';

class MobileHomeSectionOne extends StatefulWidget {
  const MobileHomeSectionOne({super.key});

  @override
  State<MobileHomeSectionOne> createState() => _MobileHomeSectionOneState();
}

class _MobileHomeSectionOneState extends State<MobileHomeSectionOne> {
  bool _lights = false;
  bool _isSearchBarVisible = false;
  GlobalKey _searchKey = GlobalKey();
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
            padding: EdgeInsets.only(
                top: AppPadding.p100,
                right: MediaQuery.of(context).size.width /6),
            child: Column(
              children: [
                GestureDetector(
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

                ///sidebar
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const WhatWeDoHomeScreen()),
                //         );
                //       },
                //       child: Text(AppString.whoWeAre,
                //           style: HomeScreen.sidebarTextStyle),
                //     ),
                //     const SizedBox(
                //       height: AppSize.s15,
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) =>
                //                   const MobileWhatWeDoHomeScreen()),
                //         );
                //       },
                //       child: Text(AppString.whatWeDo,
                //           style: HomeScreen.sidebarTextStyle),
                //     ),
                //     const SizedBox(
                //       height: AppSize.s15,
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) =>
                //                   const MobileFeaturesHomeScreen()),
                //         );
                //       },
                //       child: Text(AppString.features,
                //           style: HomeScreen.sidebarTextStyle),
                //     ),
                //     const SizedBox(
                //       height: AppSize.s15,
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) =>
                //                   const MobileCareerHomeScreen()),
                //         );
                //       },
                //       child: Text(AppString.career,
                //           style: HomeScreen.sidebarTextStyle),
                //     ),
                //     const SizedBox(
                //       height: AppSize.s15,
                //     ),
                //     GestureDetector(
                //       onTap: () {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const WhatWeDoHomeScreen()),
                //         );
                //       },
                //       child: Text(AppString.portfolio,
                //           style: HomeScreen.sidebarTextStyle),
                //     ),
                //   ],
                // ),
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 10,
                // ),

                /// txt, button
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: AppPadding.p25,left:80),
                      child: Text(AppString.homesTxt1,
                          style: AllScreensConstant.customTextStyle(
                              MediaQuery.of(context).size.width / 30,
                              FontWeightManager.bold,
                              ColorManager.white)),
                    ),
                    const SizedBox(
                      height: AppSize.s10,
                    ),

                    ///hometxt 2
                    Padding(
                      padding: const EdgeInsets.only(left:80),
                      child: Text(AppString.homesTxt2,
                          textAlign: TextAlign.start,
                          style: AllScreensConstant.customTextStyle(
                              MediaQuery.of(context).size.width / 80,
                              FontWeightManager.medium,
                              ColorManager.lightBlue)),
                    ),
                    const SizedBox(
                      height: AppSize.s10,
                    ),

                    ///button
                    Padding(
                      padding: const EdgeInsets.only(left: 80),
                      child: MaterialButton(
                        color: ColorManager.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CareerHomeScreen()),
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
                    ),
                  ],
                ),
              ],
            ),
          ),

          ///divider
          Padding(
            padding: const EdgeInsets.only(top: 165),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 10,
              child: VerticalDivider(
                width: MediaQuery.of(context).size.width / 2.8,
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

          /// Contact us, search
          Padding(
            padding: EdgeInsets.only(
              top: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /// Contact us
                GestureDetector(
                  child: Text(
                    AppString.contactUs,
                    style: TextStyle(
                      color: ColorManager.white,
                      fontSize: MediaQuery.of(context).size.width / 28,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const DescriptionScreenConstant()),
                    );
                  },
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 25),

                Padding(
                  padding: const EdgeInsets.only(right: AppPadding.p10),
                  child: Switch.adaptive(
                      activeColor: Colors.cyanAccent,
                      focusColor: ColorManager.white,
                      value: _lights,
                      onChanged: (bool value) {
                        setState(() {
                          _lights = value;
                        });
                      }),
                ),
                SizedBox(width: MediaQuery.of(context).size.width / 150),

                ///Animated Search Bar
                _isSearchBarVisible
                    ? _buildAnimatedSearchBar()
                    : SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.only(right: AppPadding.p20),
                  child: GestureDetector(
                    onTap: () {
                      _toggleSearchBar();
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.width / 12,
                      width: MediaQuery.of(context).size.width / 13,
                      decoration: BoxDecoration(
                        color: ColorManager.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      child: ShaderMask(
                        shaderCallback: (Rect bounds) {
                          return const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Colors.red, Colors.yellow, Colors.blue],
                          ).createShader(bounds);
                        },
                        child: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: AppSize.s20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///search bar
  Widget _buildAnimatedSearchBar() {
    return GestureDetector(
      onTap: () {
        _toggleSearchBar();
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: GestureDetector(
              onTap: () {
                _toggleSearchBar();
              },
              child: Container(
                  //  color: Colors.transparent,
                  ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              key: _searchKey,
              duration: Duration(milliseconds: 300),
              width: _isSearchBarVisible ? 50 : 0,
              height: 30,
              child: TextField(
                style: const TextStyle(color: Colors.black),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: ColorManager.black),
                  //  border:InputBorder.none,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(color: ColorManager.black),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 9),
                ),
                cursorWidth: 1.7,
                cursorRadius: Radius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ///
  void _toggleSearchBar() {
    setState(() {
      _isSearchBarVisible = !_isSearchBarVisible;
    });
  }
}
