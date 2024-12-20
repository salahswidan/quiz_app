import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';

class CustomTextEnterYourName extends StatelessWidget {
  const CustomTextEnterYourName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        "Enter your name",
        style: GoogleFonts.baloo2(
            color: ColorManager.kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
