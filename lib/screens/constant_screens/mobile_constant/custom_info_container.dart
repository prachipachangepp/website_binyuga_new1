import 'package:flutter/material.dart';

import '../../../presentation/color_manager.dart';
import '../../../presentation/font_manager.dart';
import '../../../presentation/theme_manager.dart';
import '../../../presentation/value_manager.dart';

class CustomInfoContainer extends StatelessWidget {
  final String text;

  const CustomInfoContainer({required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: AppSize.s187,
        decoration: BoxDecoration(
          color: Colors.blueGrey[700],
          borderRadius: const BorderRadius.all(Radius.circular(35)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppPadding.p25,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AllScreensConstant.customTextStyle(
              MediaQuery.of(context).size.width / 20,
              FontWeightManager.regular,
              ColorManager.white,
            ),
          ),
        ),
      ),
    );
  }
}
