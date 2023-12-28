import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget website;
  const Responsive(
      {super.key,
      required this.mobile,
      required this.tablet,
      required this.website});
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 800;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 800 &&
      MediaQuery.of(context).size.width < 1200;
  static bool isWebsite(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth >= 1200) {
        return website;
      } else if (constraints.maxWidth >= 800) {
        return mobile;
      } else {
        return mobile;
      }
    });
  }
}
