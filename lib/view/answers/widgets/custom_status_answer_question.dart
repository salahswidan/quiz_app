import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

class CustomStatusAnswerQuestion extends StatelessWidget {
  const CustomStatusAnswerQuestion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          left: 7,
        ),
        child: Align(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: Text(
                    textAlign: TextAlign.center,
                    "In what year did the United States declare its independence?",
                    style: GoogleFonts.baloo2(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 20,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  child: Align(
                      alignment: Alignment.center,
                      child: Row(children: [
                        Icon(CupertinoIcons.checkmark_alt_circle_fill),
                        Expanded(
                            child: Text(
                                textAlign: TextAlign.center,
                                "1986",
                                style: GoogleFonts.baloo2(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                    color: ColorManager.kPrimaryColor))),
                      ])),
                  decoration: BoxDecoration(
                    color: ColorManager.kLightWightColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                ),
              ],
            )),
        decoration: BoxDecoration(
          color: ColorManager.kGreenBoldColor,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20)),
        ),
      ),
    );
  }
}
