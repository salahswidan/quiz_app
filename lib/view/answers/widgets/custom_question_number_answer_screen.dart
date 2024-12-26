import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';

class CustomQuestionNumber extends StatelessWidget {
  const CustomQuestionNumber({
    super.key,
    required this.order,
  });
  final int order;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 58,
          height: 35,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$order",
                    style: GoogleFonts.baloo2(
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                        color: Colors.white),
                  ),
                ],
              )),
          decoration: BoxDecoration(
            color: ColorManager.kGreenBoldColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ),
      ],
    );
  }
}
