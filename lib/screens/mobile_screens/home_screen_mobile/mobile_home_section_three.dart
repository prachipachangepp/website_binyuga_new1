import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileHomeSectionThree extends StatelessWidget {
  const MobileHomeSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSize.s2200,
      width: MediaQuery.of(context).size.width,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Base Image
          Image.network(
            'images/union.png',
            fit: BoxFit.fill,
            height: AppSize.s2200,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 20,
              top: AppPadding.p15,
            ),
            child: Row(
              children: [
                Image.network(
                  "images/union_1.png",
                  height: AppSize.s700,
                  width: MediaQuery.of(context).size.width / 2,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: AppPadding.p15),
                  child: Text(
                    AppString.unionTxt1,
                    style: UnionTxtScreen1.union1TextStyle(context),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width / 30,
              right: MediaQuery.of(context).size.width / 40,
              bottom: AppPadding.p280,
            ),
            child: Row(
              children: [
                Image.network(
                  "images/rectangle.png",
                  height: AppSize.s730,
                  width: MediaQuery.of(context).size.width / 1.9,
                ),
              ],
            ),
          ),
          Center(
            child: Text(
              AppString.unionTxt2,
              style: UnionTxtScreen2.union2TextStyle(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppPadding.p1200, left: AppPadding.p10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: AppPadding.p15),
                  child: Text(
                    AppString.unionTxt3,
                    style: UnionTxtScreen1.union1TextStyle(context),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 50,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 61,
                      left: MediaQuery.of(context).size.width / 57,
                      top: MediaQuery.of(context).size.width / 27),
                  child: Image.network(
                    "images/union_2.png",
                    height: AppSize.s700,
                    width: MediaQuery.of(context).size.width / 1.9,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: AppPadding.p1180,
                right: MediaQuery.of(context).size.width / 50,
                left: MediaQuery.of(context).size.width / 2.5),
            child: Image.network(
              "images/rectangle.png",
              height: AppSize.s855,
              width: MediaQuery.of(context).size.width / 1.8,
            ),
          ),
        ],
      ),
    );
  }
}
