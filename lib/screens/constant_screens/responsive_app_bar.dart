import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/career_home.dart';
import '../../Search_Screen/search_screen1.dart';
import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';
import '../features_home.dart';
import '../what_we_do_home.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key});
  /// APPBAR
  @override
  Widget build(BuildContext context) {
    return AppBar(
      ///Remove Arrow Buttom
      automaticallyImplyLeading: false,
      title: Image.asset(
        'images/binyuga_logo.png',
        height: AppSize.s160,
        width: AppSize.s200,
      ),
      actions: [
        MediaQuery.of(context).size.width > 600
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WhatWeDoHomeScreen()),
                        );
                      },
                      child: NavBarItem(title: 'Who we are')),
                  SizedBox(width: MediaQuery.of(context).size.width / 55),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WhatWeDoHomeScreen()),
                        );
                      },
                      child: NavBarItem(title: 'What we do')),
                  SizedBox(width: MediaQuery.of(context).size.width / 55),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FeaturesHomeScreen()),
                        );
                      },
                      child: NavBarItem(title: 'Features')),
                  SizedBox(width: MediaQuery.of(context).size.width / 55),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CareerHomeScreen()),
                        );
                      },
                      child: NavBarItem(title: 'Career')),
                  SizedBox(width: MediaQuery.of(context).size.width / 55),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WhatWeDoHomeScreen()),
                        );
                      },
                      child: NavBarItem(title: 'Portfolio')),
                  SizedBox(width: MediaQuery.of(context).size.width / 6.2),
                  NavBarItem(title: 'Contacts'),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: AppPadding.p35),
                  //   child: Image.asset(
                  //     'images/search.png',
                  //     width: AppSize.s50,
                  //     height: AppSize.s50,
                  //   ),
                  // )
                  Padding(
                    padding: const EdgeInsets.only(right: AppPadding.p35),
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
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
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const SearchScreen1(title: '',)),
                            );
                          },
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            : Container(),
      ],
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;

  NavBarItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        title,
        style: AllScreensConstant.customTextStyle(
            MediaQuery.of(context).size.width / 85,
            FontWeightManager.medium,
            ColorManager.black),
      ),
    );
  }
}
