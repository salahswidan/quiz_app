import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manager.dart';

class CustomMaterialBotton extends StatelessWidget {
  const CustomMaterialBotton(
      {super.key, required this.onPressed, this.isActive = false});
  final VoidCallback onPressed;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 10,
      minWidth: 20,
      padding: EdgeInsets.all(0),
      onPressed: isActive! == true
          ? onPressed
          : null, // if isActive == true then call onPressed function else null
      child: Container(
        width: double.infinity,
        height: 59,
        decoration: BoxDecoration(
            color: isActive! == true
                ? ColorManager.kPrimaryColor
                : ColorManager.kGreyColor,
            borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            "Start",
            style: GoogleFonts.baloo2(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}
