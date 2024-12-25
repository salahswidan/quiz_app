import 'package:flutter/material.dart';

class AnswersScreen extends StatelessWidget {
  const AnswersScreen({super.key});

  @override
  Widget build(BuildContext context) {
   var m = ModalRoute.of(context)!.settings.arguments ;
    print(m);
    return Scaffold();
  }
}