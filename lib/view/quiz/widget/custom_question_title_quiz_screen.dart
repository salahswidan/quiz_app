import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomQuestionTitleQuizScreen extends StatelessWidget {
  const CustomQuestionTitleQuizScreen({
    super.key, required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style:
                GoogleFonts.baloo2(fontWeight: FontWeight.w700, fontSize: 18),
          )),
      width: double.infinity,
      height: 229,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
