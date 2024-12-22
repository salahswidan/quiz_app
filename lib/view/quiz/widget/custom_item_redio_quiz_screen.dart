
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';

class CustomItemRedioQuizScreen extends StatelessWidget {
  const CustomItemRedioQuizScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "1984",
            style: GoogleFonts.baloo2(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: ColorManager.kPrimaryColor),
          ),
          Container(
            width: 20,
            height: 20,
            decoration: ShapeDecoration(
                shape: CircleBorder(
                    side: BorderSide(
                        color: ColorManager.kPrimaryColor, width: 1)),
                color: Colors.white),
          ),
        ],
      ),
    );
  }
}
