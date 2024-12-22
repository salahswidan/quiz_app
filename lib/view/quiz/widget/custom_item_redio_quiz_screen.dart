import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';

class CustomItemRedioQuizScreen extends StatelessWidget {
  const CustomItemRedioQuizScreen({
    super.key,
    required this.option,
    required this.onTap,
    this.isSelected = false,
  });
  final String option;
  final GestureTapCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        width: double.infinity,
        decoration: BoxDecoration(
            color: isSelected == true
                ? ColorManager.kPrimaryColor.withOpacity(0.20)
                : Colors.white,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option,
              style: GoogleFonts.baloo2(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorManager.kPrimaryColor),
            ),
            isSelected == true
                ? Icon(
                    CupertinoIcons.checkmark_alt_circle_fill,
                    color: ColorManager.kPrimaryColor,
                  )
                : Container(
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
      ),
    );
  }
}
