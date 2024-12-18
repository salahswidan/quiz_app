import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Q",
              style: GoogleFonts.montserrat(
                fontSize: 400,
                color: Colors.white,
              ),
            ),
            MaterialButton(
              onPressed: () {},
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
            )
          ],
        ),
      ),
    );
  }
}
