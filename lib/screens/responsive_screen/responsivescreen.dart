import 'package:flutter/material.dart';
import 'package:website_binyuga_new1/presentation/value_manager.dart';

import '../../presentation/string_manager.dart';
import '../home_page_screens/home_section_one.dart';
import '../home_page_screens/home_section_three.dart';
import '../home_page_screens/home_section_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(AppString.binyugaWebsite),
        ),
        body: MyResponsiveWidget(),
      ),
    );
  }
}

class MyResponsiveWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWideScreen = constraints.maxWidth >= 600;

        if (constraints.maxWidth < 600) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: buildContent(context, isWideScreen),
            ),
          );
        } else {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: buildContent(context, isWideScreen),
          );
        }
      },
    );
  }

  Widget buildContent(BuildContext context, bool isWideScreen) {
    return Container(
      padding: const EdgeInsets.all(AppPadding.p16),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              20,
              (index) => Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: isWideScreen
                            ? MediaQuery.of(context).size.width
                            : 1240,
                        height: 970,
                        color: Colors.white,
                        child: Center(child: HomeSectionOne()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: isWideScreen
                            ? MediaQuery.of(context).size.width
                            : 1240,
                        height: 500,
                        color: Colors.white,
                        child: Center(child: HomeSectionTwo()),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: isWideScreen
                            ? MediaQuery.of(context).size.width
                            : 1536,
                        height: 2000,
                        color: Colors.white,
                        child: Center(child: HomeSectionThree()),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
