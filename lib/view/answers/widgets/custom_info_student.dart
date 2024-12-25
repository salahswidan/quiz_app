

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomInfoStudent extends StatelessWidget {
  const CustomInfoStudent({
    super.key, required this.name, required this.grade,
  });
  final String name;
  final String grade;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      margin: EdgeInsets.only(left: 16, right: 16, top: 39),
      child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name : $name",
                style: GoogleFonts.baloo2(
                    fontWeight: FontWeight.bold, fontSize: 21),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                grade,
                style: GoogleFonts.baloo2(
                    fontWeight: FontWeight.w400, fontSize: 21),
              ),
            ],
          )),
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 10),
          )
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
