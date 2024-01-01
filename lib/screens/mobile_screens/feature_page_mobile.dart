import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/color_manager.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';
import 'package:website_binyuga_new1/screens/constant_screens/mobile_constant/bottom_nav_bar_mobile.dart';
import 'package:website_binyuga_new1/screens/constant_screens/mobile_constant/description_page_constant_mobile.dart';
import '../constant_screens/website_constant/responsive_app_bar.dart';
import 'feature_screen_mobile/mobile_feature_section_one.dart';
import 'feature_screen_mobile/mobile_feature_section_three.dart';
import 'feature_screen_mobile/mobile_feature_section_two.dart';

class MobileFeaturesHomeScreen extends StatefulWidget {
  const MobileFeaturesHomeScreen({super.key});

  @override
  State<MobileFeaturesHomeScreen> createState() =>
      _MobileFeaturesHomeScreenState();
}

class _MobileFeaturesHomeScreenState extends State<MobileFeaturesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenWidth;
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: ResponsiveAppBar(),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          screenWidth = MediaQuery.of(context).size;
          List<Widget> body = [
            Stack(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                color: ColorManager.white,
                                child: const MobileFeatureSectionOne())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: AppSize.s500,
                                child: const MobileFeatureSectionTwo())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                height: AppSize.s400,
                                child: const MobileFeatureSectionThree())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                child: const DescriptionScreenConstantMobile())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: AppSize.s100,
                                width: MediaQuery.of(context).size.width,
                                child: const BottomNavBarScreenMobile())),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ];
          return ListView.builder(
              shrinkWrap: true,
              itemCount: body.length,
              itemBuilder: (context, index) {
                return body[index];
              });
        }));
  }
}
