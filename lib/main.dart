import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/resources/route_manager.dart';
import 'view/splash/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "main"),
      debugShowCheckedModeBanner: false,
      routes: RouteManager.routes,
      initialRoute: RoutesName.KsplashScreen,
    );
  }
}
