import 'package:flutter/material.dart';
import '../../presentation/value_manager.dart';

class FeatureSectionThree extends StatelessWidget {
  const FeatureSectionThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Frame Image
        Image.network(
          "images/Frame 14.png",
          height: AppSize.s636,
          width: MediaQuery.of(context).size.width / 1.6,
        ),
        const SizedBox(
          height: AppSize.s10,
        ),

        /// Design Image 2
        Image.network(
          "images/design 2.png",
          height: AppSize.s500,
          width: MediaQuery.of(context).size.width / 2.35,
        ),
      ],
    );
  }
}
