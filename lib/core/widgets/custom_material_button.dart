import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manager.dart';

class CustomMaterialBotton extends StatelessWidget {
  const CustomMaterialBotton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 10,
      minWidth: 20,
      padding: EdgeInsets.all(0),
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 59,
        decoration: BoxDecoration(
            color: ColorManager.kPrimaryColor,
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
