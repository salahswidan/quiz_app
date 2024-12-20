import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../widgets/custom_logo_login_screen.dart';
import '../widgets/custom_text_enter_your_name.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            CustomLogoLoginScreen(),
            CustomTextEnterYourName()
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/loginScreen.png",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
