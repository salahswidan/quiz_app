import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/controller/splash/splash_controller.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../../on_boarding/screens/on_boarding_screen.dart';
import '../widgets/custom_botton_splash_screen.dart';

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
            CustomBottonSplashScreen(
              onPressed: () {
                SplashController.goToOnBoarding(context: context);
              },
            )
          ],
        ),
      ),
    );
  }
}
