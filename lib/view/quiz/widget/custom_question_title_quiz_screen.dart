import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/core/const_values.dart';

class CustomQuestionTitleQuizScreen extends StatelessWidget {
  const CustomQuestionTitleQuizScreen({
    super.key, required this.outPutStreamQuestionTitle,
  });
  final Stream<int> outPutStreamQuestionTitle;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: outPutStreamQuestionTitle,
      builder: (builder, snapshot) =>
       Container(
        padding: EdgeInsets.all(24),
        child: Align(
            alignment: Alignment.center,
            child: Text(
              ConstValues.questionList[snapshot.data == null ? 0 : snapshot.data!].question,
              style:
                  GoogleFonts.baloo2(fontWeight: FontWeight.w700, fontSize: 18),
            )),
        width: double.infinity,
        height: 229,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.4),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
