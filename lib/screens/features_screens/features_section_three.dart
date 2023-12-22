import 'package:flutter/material.dart';

import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';

class FeatureSectionThree extends StatelessWidget {
  const FeatureSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          "images/Frame 14.png",
          height: AppSize.s636,
          width: MediaQuery
              .of(context)
              .size
              .width / 1.6,
          // width:200,
        ),
        SizedBox(height:10,),
        Image.network(
          "images/design 2.png",
          height: AppSize.s500,
          width: MediaQuery
              .of(context)
              .size
              .width / 2.35,
          // width:200,
        ),
      ],
    );
  }
}