import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../../../core/const_values.dart';
import '../widgets/custom_info_student.dart';

class AnswersScreen extends StatelessWidget {
  const AnswersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //  var m = ModalRoute.of(context)!.settings.arguments ;
    //   print(m);
    return Scaffold(
      backgroundColor: ColorManager.kPrimaryColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CustomInfoStudent(
            name: "Salah Swidan",
            grade: "Grade:   3  /  5",
          ),
        ],
      ),
    );
  }
}
