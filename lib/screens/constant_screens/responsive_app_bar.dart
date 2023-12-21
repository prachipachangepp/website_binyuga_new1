import 'package:flutter/material.dart';
import '../../presentation/color_manager.dart';
import '../../presentation/font_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';

class ResponsiveAppBar extends StatelessWidget {
  const ResponsiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
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
            NavBarItem(title: 'Who we are'),
            SizedBox(width: MediaQuery.of(context).size.width/55),
            NavBarItem(title: 'What we do'),
            SizedBox(width: MediaQuery.of(context).size.width/55),
            NavBarItem(title: 'Features'),
            SizedBox(width: MediaQuery.of(context).size.width/55),
            NavBarItem(title: 'Career'),
            SizedBox(width: MediaQuery.of(context).size.width/55),
            NavBarItem(title: 'Portfolio'),
            SizedBox(width: MediaQuery.of(context).size.width/6.2),
            NavBarItem(title: 'Contacts'),

            Padding(
              padding:  EdgeInsets.only(right: AppPadding.p35),
              child: Image.asset(
                'images/search.png',
                width: AppSize.s50,
                height: AppSize.s50,
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
        style: AllScreensConstant.customTextStyle(MediaQuery.of(context).size.width/90,
            FontWeightManager.medium, ColorManager.black),
      ),
    );
  }
}