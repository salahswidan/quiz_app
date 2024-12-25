import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../core/resources/color_manager.dart';

class CustomCircularPercentIndicator extends StatefulWidget {
  const CustomCircularPercentIndicator({
    super.key,
    required this.outPutStreamTime,
    required this.outPutAniamtionStatus,
  });
  final Stream<bool> outPutAniamtionStatus;

  final Stream<int> outPutStreamTime;

  @override
  State<CustomCircularPercentIndicator> createState() =>
      _CustomCircularPercentIndicatorState();
}

class _CustomCircularPercentIndicatorState
    extends State<CustomCircularPercentIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  double progress = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 30),
    );
    animationController.forward();
    Tween tween = Tween<double>(begin: 0, end: 1);
    animationController.addListener(() {
      progress = tween.evaluate(animationController) as double;
     // print(progress);
    });
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder2(
      streams: StreamTuple2<bool, int>(
          widget.outPutAniamtionStatus, widget.outPutStreamTime),
      builder: (context, snapshots) => CircleAvatar(
        radius: 43,
        backgroundColor: Colors.white,
        child: CircularPercentIndicator(
          // animation: snapshots.snapshot1.data == null ? true : snapshots.snapshot1.data!,

          restartAnimation: true,
          animationDuration: 30000,
          backgroundColor: ColorManager.kPrimaryColor.withOpacity(.38),
          radius: 43.0,
          circularStrokeCap: CircularStrokeCap.round,
          lineWidth: 5.0,
          percent: progress,
          center: Text(
            snapshots.snapshot2.data == null
                ? "0"
                : snapshots.snapshot2.data.toString(),
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
