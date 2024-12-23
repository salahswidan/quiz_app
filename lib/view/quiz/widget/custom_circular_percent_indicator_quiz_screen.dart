import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../core/resources/color_manager.dart';

class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key,
    required this.text,
    required this.outPutStreamTime,
  });
  final String text;
  final Stream<int> outPutStreamTime;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 43,
      backgroundColor: Colors.white,
      child: CircularPercentIndicator(
        restartAnimation: true,
        animationDuration: 30000,
        backgroundColor: ColorManager.kPrimaryColor.withOpacity(.38),
        animation: true,
        radius: 43.0,
        circularStrokeCap: CircularStrokeCap.round,
        lineWidth: 5.0,
        percent: 1.0,
        center: StreamBuilder(
            stream: outPutStreamTime,
            builder: (builder, snapshot) {
              return Text(
                snapshot.data == null ? "0" : snapshot.data.toString(),
                style: GoogleFonts.baloo2(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                ),
              );
            }),
        progressColor: ColorManager.kPrimaryColor,
      ),
    );
  }
}
