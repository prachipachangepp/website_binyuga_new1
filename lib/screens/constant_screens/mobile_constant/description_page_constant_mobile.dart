import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../website_constant/description_bottom_row.dart';
import 'description_bottom_row_mobile.dart';

class DescriptionScreenConstantMobile extends StatefulWidget {
  const DescriptionScreenConstantMobile({super.key});

  @override
  State<DescriptionScreenConstantMobile> createState() =>
      _DescriptionScreenConstantMobileState();
}

class _DescriptionScreenConstantMobileState
    extends State<DescriptionScreenConstantMobile> {
  bool _isSearchBarVisible = false;
  final GlobalKey _searchKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: ColorManager.nevyBlue,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, top: AppPadding.p100, right: 30),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///who we are
                Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      AppString.whoWeAre,
                      style: LastDescriptionScreen.rowTextStyle(context),
                    ),
                    const SizedBox(
                      height: AppSize.s5,
                    ),
                    Text(
                      AppString.aboutUs,
                      style: LastColumnScreen.columnTextStyle(context),
                    ),
                    const SizedBox(
                      height: AppSize.s5,
                    ),
                    Text(
                      AppString.teamProfiles,
                      style: LastColumnScreen.columnTextStyle(context),
                    ),
                    const SizedBox(
                      height: AppSize.s5,
                    ),
                    Text(
                      AppString.clientTestimonials,
                      style: LastColumnScreen.columnTextStyle(context),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 20,
                ),

                ///what we do
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 85),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppString.whatWeDo,
                        style: LastDescriptionScreen.rowTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.softwareDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.webDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.uiUxDesigning,
                        textAlign: TextAlign.left,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),

                ///career
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 85,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        AppString.career,
                        style: LastDescriptionScreen.rowTextStyle(context),

                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.fullStackDevelopment,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.softwareTesting,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.programmingLanguage,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),

                ///features
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 85,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text(
                    AppString.features,
                      style: LastDescriptionScreen.rowTextStyle(context),
                    ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.tailoredProducts,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.costEffectiveness,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        AppString.problemSolving,
                        style: LastColumnScreen.columnTextStyle(context),
                      ),
                      const SizedBox(
                        height: AppSize.s5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 15,
                ),

                const SizedBox(height: 50),

                ///bottom row
                Padding(
                  padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width /50,),
                  child: const DescriptionBottomRowConstantMobile(),
                ),
              ],
            ),

            // Widget _buildAnimatedSearchBar() {
            //   return GestureDetector(
            //     onTap: () {
            //       _toggleSearchBar();
            //     },
            //     child: Stack(
            //       children: [
            //         Positioned.fill(
            //           child: GestureDetector(
            //             onTap: () {
            //               _toggleSearchBar();
            //             },
            //             child: Container(
            //               color: Colors.transparent,
            //             ),
            //           ),
            //         ),
            // Center(
            //   child: AnimatedContainer(
            //     key: _searchKey,
            //     duration: Duration(milliseconds: 300),
            //     width: _isSearchBarVisible ? 180 : 0,
            //     height: 40,
            //     child: TextField(
            //       style: TextStyle(color: Colors.black),
            //       cursorColor: Colors.grey,
            //       decoration: InputDecoration(
            //         hintText: 'Search...',
            //         hintStyle: TextStyle(color: ColorManager.black),
            //         filled: true,
            //         fillColor: Colors.white,
            //         border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(20.0),
            //           borderSide: BorderSide(color: ColorManager.black),
            //         ),
            //         contentPadding:
            //         const EdgeInsets.symmetric(vertical: 10.0, horizontal: 9),
            //       ),
            //       cursorWidth: 1.7,
            //       cursorRadius: Radius.circular(5),
            //     ),
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
