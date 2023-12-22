import 'package:flutter/material.dart';

import '../../presentation/string_manager.dart';
import '../../presentation/theme_manager.dart';
import '../../presentation/value_manager.dart';

class FeatureSectionThree extends StatelessWidget {
  const FeatureSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child:
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
             mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: Image.network(
                  "images/Frame 14.png",
                  height: AppSize.s636,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 1.5,
                  // width:200,
                ),
              ),
              SizedBox(height:10,),
              Padding(
                padding: const EdgeInsets.only(right:210),
                child: Image.network(
                  "images/design 2.png",
                  height: AppSize.s500,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 2,
                  // width:200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}