import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/color_manager.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';
import 'package:website_binyuga_new1/screens/constant_screens/mobile_constant/bottom_nav_bar_mobile.dart';
import 'package:website_binyuga_new1/screens/constant_screens/mobile_constant/description_page_constant_mobile.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/what_we_do_screen_mobile/mobile_wwd_section_one.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/what_we_do_screen_mobile/mobile_wwd_section_three.dart';
import 'package:website_binyuga_new1/screens/mobile_screens/what_we_do_screen_mobile/mobile_wwd_section_two.dart';
import '../constant_screens/website_constant/responsive_app_bar.dart';

class MobileWhatWeDoHomeScreen extends StatefulWidget {
  const MobileWhatWeDoHomeScreen({super.key});
  @override
  State<MobileWhatWeDoHomeScreen> createState() =>
      _MobileWhatWeDoHomeScreenState();
}

class _MobileWhatWeDoHomeScreenState extends State<MobileWhatWeDoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenWidth;
    return Scaffold(
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
                            flex: 1,
                            child: Container(
                                height: AppSize.s400,
                                color: ColorManager.white,
                                child: const MobileWWDSectionOne())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child:
                                Container(child: const MobileWWDSectionTwo())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                child: const MobileWWDSectionThree())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                child:
                                    const DescriptionScreenConstantMobile())),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: Container(
                                height: AppSize.s100,
                                width: MediaQuery.of(context).size.width,
                                color: ColorManager.white,
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
