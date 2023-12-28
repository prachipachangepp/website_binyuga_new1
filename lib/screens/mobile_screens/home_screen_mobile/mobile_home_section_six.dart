import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../constant_screens/website_constant/description_bottom_row.dart';

class MobileHomeSectionSix extends StatefulWidget {
  const MobileHomeSectionSix({super.key});
  @override
  State<MobileHomeSectionSix> createState() => _MobileHomeSectionSixState();
}

class _MobileHomeSectionSixState extends State<MobileHomeSectionSix> {
  bool _isSearchBarVisible = false;
  GlobalKey _searchKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.nevyBlue,
      child: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width / 48,
                  ),
                  child: Image.asset(
                    "images/binyuga_logo.png",
                  ),
                ),
                const Spacer(),
                ///Animated Search Bar
                _isSearchBarVisible
                    ? _buildAnimatedSearchBar()
                    : SizedBox.shrink(),
                Padding(
                  padding: const EdgeInsets.only(right: AppPadding.p35),
                  child: GestureDetector(
                    onTap: () {
                      _toggleSearchBar();
                    },
                    child: Container(
                      height: AppSize.s40,
                      width: AppSize.s40,
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
                          size: AppSize.s35,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 10,
              ),
              child: Row(
                children: [
                  ///who we are
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 85,
                        bottom: 137),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(AppString.whoWeAre,
                            style: LastDescriptionScreen.rowTextStyle(context)),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.aboutUs,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.teamProfiles,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.clientTestimonials,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 13,
                  ),

                  ///what we do
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 85,
                        bottom: 160),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: AppPadding.p60),
                          child: Text(AppString.whatWeDo,
                              style:
                              LastDescriptionScreen.rowTextStyle(context)),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.softwareDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.applicationDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.webDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.uiUxDesigning,
                          textAlign: TextAlign.left,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.careerMonitoring,
                          textAlign: TextAlign.left,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 13,
                  ),

                  ///career
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 85,
                        bottom:180),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: AppPadding.p120),
                          child: Text(AppString.careerC,
                              style:
                              LastDescriptionScreen.rowTextStyle(context)),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.hybridApplicationDeveloper,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.uIUxDesigning,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.uiUxDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.backendDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.fullStackDevelopment,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.softwareTesting,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.programmingLanguage,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 13,
                  ),

                  ///features
                  Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 85,
                        bottom: 170),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: AppPadding.p100),
                          child: Text(AppString.featuresF,
                              style:
                              LastDescriptionScreen.rowTextStyle(context)),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.tailoredProducts,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.costEffectiveness,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.intuitiveUserCenterDesign,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.problemSolving,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.roughToughSoftware,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                        const SizedBox(
                          height: AppSize.s15,
                        ),
                        Text(
                          AppString.innovativeProjects,
                          style: LastColumnScreen.columnTextStyle(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///bottom row
            Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 10, bottom: 30),
                child: const DescriptionBottomRowConstant()),
          ],
        ),
      ),
    );
  }

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
                color: Colors.transparent,
              ),
            ),
          ),
          Center(
            child: AnimatedContainer(
              key: _searchKey,
              duration: Duration(milliseconds: 300),
              width: _isSearchBarVisible ? 180 : 0,
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: ColorManager.black),
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

