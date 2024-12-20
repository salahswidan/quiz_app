

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/resources/color_manager.dart';

class CustomLogoLoginScreen extends StatelessWidget {
  const CustomLogoLoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Q",
      style: GoogleFonts.montserrat(
        fontSize: 200,
        color: ColorManager.kPrimaryColor,
      ),
    );
  }
}
