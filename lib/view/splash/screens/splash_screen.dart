import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Center(
        child: Text(
          "Q",
          style: TextStyle(fontSize: 400, color: Colors.white),
        ),
      ),
    );
  }
}
