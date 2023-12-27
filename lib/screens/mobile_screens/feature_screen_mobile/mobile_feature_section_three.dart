import 'package:flutter/material.dart';

import '../../../presentation/value_manager.dart';

class MobileFeatureSectionThree extends StatelessWidget {
  const MobileFeatureSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Frame Image
        Image.asset(
          "images/Frame 14.png",
          height: AppSize.s636,
          width: MediaQuery.of(context).size.width / 1.6,
        ),
        const SizedBox(
          height: AppSize.s10,
        ),

        /// Design Image 2
        Image.asset(
          "images/design 2.png",
          height: AppSize.s500,
          width: MediaQuery.of(context).size.width / 2.35,
        ),
      ],
    );
  }
}
