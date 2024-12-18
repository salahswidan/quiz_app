import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottonSplashScreen extends StatelessWidget {
  const CustomBottonSplashScreen({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(35)),
        child: Center(
          child: Text(
            "Get Started",
            style: GoogleFonts.montserrat(
                fontSize: 21, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
