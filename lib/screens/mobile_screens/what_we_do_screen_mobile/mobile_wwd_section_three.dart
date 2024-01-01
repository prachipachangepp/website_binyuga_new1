import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/color_manager.dart';
import 'package:website_binyuga_new1/presentation/theme_manager.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';

class MobileWWDSectionThree extends StatefulWidget {
  const MobileWWDSectionThree({super.key});
  @override
  State<MobileWWDSectionThree> createState() => _MobileWWDSectionThreeState();
}

class _MobileWWDSectionThreeState extends State<MobileWWDSectionThree> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorManager.white,
      height: AppSize.s700,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: AppPadding.p50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppConstants.imagePath1,
                              height: AppSize.s110,
                            ),
                            SizedBox(
                              width: AppSize.s165,
                              height: AppSize.s25,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                    ))),
                                onPressed: () {},
                                child: Text(AppConstants.buttonText1,
                                    style: MobileWWDExploreConstant
                                        .mobileHomeTextStyle(context)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          AppConstants.imagePath2,
                          height: AppSize.s110,
                        ),
                        SizedBox(
                          width: AppSize.s169,
                          height: AppSize.s25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                  //   side: BorderSide(color: Colors.white),
                                ))),
                            onPressed: () {},
                            child: Text(AppConstants.buttonText2,
                                style: MobileWWDExploreConstant
                                    .mobileHomeTextStyle(context)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: AppPadding.p40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppConstants.imagePath3,
                              height: AppSize.s110,
                            ),
                            SizedBox(
                              width: AppSize.s165,
                              height: AppSize.s25,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      //   side: BorderSide(color: Colors.white),
                                    ))),
                                onPressed: () {},
                                child: Text(AppConstants.buttonText3,
                                    style: MobileExploreConstant
                                        .mobilesubHomeTextStyle(context)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          AppConstants.imagePath4,
                          height: AppSize.s110,
                        ),
                        SizedBox(
                          width: AppSize.s165,
                          height: AppSize.s25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                  //   side: BorderSide(color: Colors.white),
                                ))),
                            onPressed: () {},
                            child: Text(AppConstants.buttonText4,
                                style: MobileExploreConstant
                                    .mobilesubHomeTextStyle(context)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: AppPadding.p40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              AppConstants.imagePath5,
                              height: AppSize.s110,
                            ),
                            SizedBox(
                              width: AppSize.s165,
                              height: AppSize.s25,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue),
                                    shape: MaterialStateProperty.all(
                                        const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      //   side: BorderSide(color: Colors.white),
                                    ))),
                                onPressed: () {},
                                child: Text(
                                  AppConstants.buttonText5,
                                  style: MobileExploreConstant
                                    .mobilesubHomeTextStyle(context)
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          AppConstants.imagePath6,
                          height: AppSize.s110,
                        ),
                        SizedBox(
                          width: AppSize.s165,
                          height: AppSize.s25,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.blue),
                                shape: MaterialStateProperty.all(
                                    const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                  //   side: BorderSide(color: Colors.white),
                                ))),
                            onPressed: () {},
                            child: Text(AppConstants.buttonText6,
                                style: MobileExploreConstant
                                    .mobilesubHomeTextStyle(context)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
