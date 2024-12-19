
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../models/on_boarding_screen/on_boarding_screen_model.dart';

class CustomItemsPageViewOnBoarding extends StatelessWidget {
  const CustomItemsPageViewOnBoarding({
    super.key, required this.onBoardingScreenModel,
  });
    final OnBoardingScreenModel onBoardingScreenModel;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 46.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    onBoardingScreenModel.onBoardingImage,
                    height: 400,
                  ),
                  SizedBox(
                    height: 108,
                  ),
                  Text(
                    onBoardingScreenModel.onBoardingTitle,
                    style: TextStyle(
                        fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    onBoardingScreenModel.onBoardingDesc,
                    style: TextStyle(fontSize: 21),
                  ),
                ]),
          ),
        ),
      );
  }
}
