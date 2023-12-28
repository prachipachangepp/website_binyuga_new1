import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/theme_manager.dart';

class BottomNavBarScreenMobile extends StatefulWidget {
  const BottomNavBarScreenMobile({super.key});

  @override
  State<BottomNavBarScreenMobile> createState() => _BottomNavBarScreenMobileState();
}

class _BottomNavBarScreenMobileState extends State<BottomNavBarScreenMobile> {
  String selectedCountry = 'Select Country/regions';
  List<String> countries = [
    'Select Country/regions',
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'India',
    'Japan',
    // Add more countries as needed
  ];
  String? selectedValue;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: AppSize.s100,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/black_bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
                top: 30,
                //bottom: 20
              ),
            child: Container(
              color: Colors.transparent,
              width: MediaQuery.of(context).size.width,
              child: FittedBox(
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
                child: Row(
                  children: [
                    Image.asset(
                      'images/binyuga_logo.png',
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 15,
                    ),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.facebook,
                          color: ColorManager.white,
                          size: AppSize.s20,
                        ),
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                        Icon(
                          FontAwesomeIcons.youtube,
                          color: ColorManager.white,
                          size: AppSize.s20,
                        ),
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                        Icon(
                          FontAwesomeIcons.twitter,
                          color: ColorManager.white,
                          size: AppSize.s20,
                        ),
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                        Icon(
                          FontAwesomeIcons.instagram,
                          color: ColorManager.white,
                          size: AppSize.s20,
                        ),
                        const SizedBox(
                          width: AppSize.s20,
                        ),
                        Icon(
                          FontAwesomeIcons.linkedin,
                          color: ColorManager.white,
                          size: AppSize.s20,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('www.career@binyuga.com',
                              style: AllScreensConstant.customTextStyle(
                                  FontSize.s17,
                                  FontWeightManager.regular,
                                  ColorManager.white)
                             ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 9,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width / 20,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorManager.white,
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.circular(2)),
                        width: MediaQuery.of(context).size.width / 6.5,
                        height: AppSize.s30,
                        child: DropdownButton(
                          focusColor: ColorManager.white,
                          alignment: Alignment.center,
                          hint: Text(
                            countries[0],
                            style: TextStyle(
                                color: ColorManager.black, fontSize: 11),
                          ),
                          value: selectedCountry,
                          underline: const SizedBox(),
                          isExpanded: true,
                          icon: const Icon(
                            Icons.arrow_drop_down,
                            size: AppSize.s20,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedCountry = newValue!;
                            });
                          },
                          items: countries.map((country) {
                            return DropdownMenuItem(
                              value: country,
                              child: Center(
                                  child: Text(
                                country,
                                style: TextStyle(
                                  fontSize: AppSize.s15,
                                  fontWeight: FontWeightManager.bold,
                                  color: ColorManager.black,
                                ),
                              )),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
