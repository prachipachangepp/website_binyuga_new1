import 'package:flutter/material.dart';

import '../../../presentation/value_manager.dart';

class MobileFeatureSectionThree extends StatelessWidget {
  const MobileFeatureSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "images/trailored.png",
          height: AppSize.s320,
          width: MediaQuery.of(context).size.width / 1.3,
        ),
      ],
    );
  }
}
