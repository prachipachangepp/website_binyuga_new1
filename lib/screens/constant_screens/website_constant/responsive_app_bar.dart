import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/screens/website_screens/career_home.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';
import '../../mobile_screens/career_page_mobile.dart';
import '../../website_screens/features_home.dart';
import '../../website_screens/what_we_do_home.dart';

class ResponsiveAppBar extends StatefulWidget {
  const ResponsiveAppBar({super.key});

  @override
  State<ResponsiveAppBar> createState() => _ResponsiveAppBarState();
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  bool _isSearchBarVisible = false;
  GlobalKey _searchKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      ///Remove Arrow Buttom
       automaticallyImplyLeading: false,
      /// APPBAR
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
                              builder: (context) => const MobileCareerHomeScreen()),
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
                  ///Animated Search Bar
                  _isSearchBarVisible
                      ? _buildAnimatedSearchBar()
                      : SizedBox.shrink(),
                  Padding(
                    padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/100),
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
              )
            : Container(),
      ],
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
              width: _isSearchBarVisible ? MediaQuery.of(context).size.width/15 : 0,
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.black),
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: ColorManager.black,fontSize: MediaQuery.of(context).size.width/95),
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
            MediaQuery.of(context).size.width / 80,
            FontWeightManager.medium,
            ColorManager.black),
      ),
    );
  }
}


//
//
// import 'package:flutter/material.dart';
// import 'package:website_binyuga_new1/screens/career_home.dart';
// import '../../Search_Screen/search_screen1.dart';
// import '../../presentation/color_manager.dart';
// import '../../presentation/font_manager.dart';
// import '../../presentation/theme_manager.dart';
// import '../../presentation/value_manager.dart';
// import '../features_home.dart';
// import '../what_we_do_home.dart';
//
// class ResponsiveAppBar extends StatelessWidget {
//   const ResponsiveAppBar({super.key});
//   /// APPBAR
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       ///Remove Arrow Buttom
//       automaticallyImplyLeading: false,
//       title: Image.asset(
//         'images/binyuga_logo.png',
//         height: AppSize.s160,
//         width: AppSize.s200,
//       ),
//       actions: [
//         MediaQuery.of(context).size.width > 600
//             ? Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const WhatWeDoHomeScreen()),
//                   );
//                 },
//                 child: NavBarItem(title: 'Who we are')),
//             SizedBox(width: MediaQuery.of(context).size.width / 55),
//             GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const WhatWeDoHomeScreen()),
//                   );
//                 },
//                 child: NavBarItem(title: 'What we do')),
//             SizedBox(width: MediaQuery.of(context).size.width / 55),
//             GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const FeaturesHomeScreen()),
//                   );
//                 },
//                 child: NavBarItem(title: 'Features')),
//             SizedBox(width: MediaQuery.of(context).size.width / 55),
//             GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const CareerHomeScreen()),
//                   );
//                 },
//                 child: NavBarItem(title: 'Career')),
//             SizedBox(width: MediaQuery.of(context).size.width / 55),
//             GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const WhatWeDoHomeScreen()),
//                   );
//                 },
//                 child: NavBarItem(title: 'Portfolio')),
//             SizedBox(width: MediaQuery.of(context).size.width / 6.2),
//             NavBarItem(title: 'Contacts'),
//             // Padding(
//             //   padding: const EdgeInsets.only(right: AppPadding.p35),
//             //   child: Image.asset(
//             //     'images/search.png',
//             //     width: AppSize.s50,
//             //     height: AppSize.s50,
//             //   ),
//             // )
//             Padding(
//               padding: const EdgeInsets.only(right: AppPadding.p35),
//               child: Container(
//                 height: 40,
//                 width: 40,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(25.0),
//                   ),
//                 ),
//                 child: ShaderMask(
//                   shaderCallback: (Rect bounds) {
//                     return const LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [Colors.red, Colors.yellow, Colors.blue],
//                     ).createShader(bounds);
//                   },
//                   child: GestureDetector(
//                     onTap: (){
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                             const SearchScreen1(title: '',)),
//                       );
//                     },
//                     child: const Icon(
//                       Icons.search,
//                       color: Colors.white,
//                       size: 35,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         )
//             : Container(),
//       ],
//     );
//   }
// }
//
// class NavBarItem extends StatelessWidget {
//   final String title;
//
//   NavBarItem({required this.title});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//       child: Text(
//         title,
//         style: AllScreensConstant.customTextStyle(
//             MediaQuery.of(context).size.width / 90,
//             FontWeightManager.medium,
//             ColorManager.black),
//       ),
//     );
//   }
// }
