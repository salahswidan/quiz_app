import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../core/resources/color_manager.dart';

class CustomCircularPercentIndicator extends StatelessWidget {
  const CustomCircularPercentIndicator({
    super.key,
    required this.outPutStreamTime, required this.outPutAniamtionStatus,
  });
    final Stream<bool> outPutAniamtionStatus;

  final Stream<int> outPutStreamTime;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder2(
      streams: StreamTuple2<bool, int>(outPutAniamtionStatus, outPutStreamTime),
      builder: (context, snapshots) =>
       CircleAvatar(
        radius: 43,
        backgroundColor: Colors.white,
        child: CircularPercentIndicator(
                    animation: snapshots.snapshot1.data == null ? true : snapshots.snapshot1.data!,

          restartAnimation: true,
          animationDuration: 30000,
          backgroundColor: ColorManager.kPrimaryColor.withOpacity(.38),
          radius: 43.0,
          circularStrokeCap: CircularStrokeCap.round,
          lineWidth: 5.0,
          percent: 1.0,
          center: Text(
            snapshots.snapshot2.data == null ? "0" : snapshots.snapshot2.data.toString(),
            style: GoogleFonts.baloo2(
              fontWeight: FontWeight.w700,
              fontSize: 32,
            ),
          ),
          progressColor: ColorManager.kPrimaryColor,
        ),
      ),
    );
  }
}
