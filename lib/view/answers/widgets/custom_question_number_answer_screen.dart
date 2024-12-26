import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomQuestionNumber extends StatelessWidget {
  const CustomQuestionNumber({
    super.key,
    required this.order,
  });
  final int order;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 58,
          height: 35,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$order",
                    style: GoogleFonts.baloo2(
                        fontWeight: FontWeight.bold, fontSize: 21),
                  ),
                ],
              )),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ),
      ],
    );
  }
}
