import 'package:flutter/material.dart';
import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/string_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class MobileHomeSectionThree extends StatelessWidget {
  const MobileHomeSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     height: AppSize.s400,
    //  width: 400,
      color: ColorManager.white,
      child: Stack(
        children: [
          /// Base Image
          Image.asset(
            'images/union.png',
            fit: BoxFit.fill,
            height: AppSize.s400,
            width:AppSize.s470,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom:100,top:AppPadding.p20,left:15),
            child: Row(
              children: [
                Image.asset(
                  "images/union_1.png",
                  height: AppSize.s126,
                  width: AppSize.s180,
                ),


                Padding(
                  padding: const EdgeInsets.only(left:20),
                  child: Text(
                    AppString.unionTxt1,
                    style: TextStyle(
                      // fontWeight: FontWeightManager.medium,
                        fontSize: FontSize.s7,
                        color: ColorManager.white),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:AppPadding.p10,left:5),
                child: Image.asset(
                  "images/rectangle.png",
                  height: AppSize.s145,
                  width: AppSize.s200,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:AppPadding.p185,left:75),
            child: Text(
              AppString.unionTxt2,
              style: UnionTxtScreen2.union2TextStyle(context),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:10,top:AppPadding.p230),
                child: Text(
                  AppString.unionTxt3,
                  style: TextStyle(
                     // fontWeight: FontWeightManager.medium,
                      fontSize: 7,
                      color: ColorManager.white),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 50,
              ),
              Padding(
                padding: const EdgeInsets.only(top:AppPadding.p230,left:12),
                child: Image.asset(
                  "images/union_2.png",
                  height:AppSize.s126,
                  width: AppSize.s180,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top:AppPadding.p220,left:155),
            child: Image.asset(
              "images/rectangle.png",
              height: AppSize.s145,
              width: AppSize.s200,
                      ),
          ),
        ],
      ),
    );
  }
}
