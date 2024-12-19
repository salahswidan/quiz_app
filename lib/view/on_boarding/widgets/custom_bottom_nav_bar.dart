import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.dotCount,
    required this.onTapDotIndicator, required this.outputDataDotIndicator, required this.onTapNext, required this.outputDataTextStart, required this.onTapSkip,
  });
  final int dotCount;
  final void Function(int index) onTapDotIndicator;
  final Stream<int> outputDataDotIndicator;
  final Stream<int> outputDataTextStart;
  final GestureTapCallback onTapNext;
  final GestureTapCallback onTapSkip;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 52, right: 32, left: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: onTapSkip,
            child: Text(
              "skip",
              style: TextStyle(fontSize: 15),
            ),
          ),
          StreamBuilder(
            stream: outputDataDotIndicator,
            builder: (context, snapshot) =>  DotsIndicator(
              decorator: DotsDecorator(
                size: Size(12, 12),
                activeSize: Size(12, 12),
                activeColor: ColorManager.kDarkPanfsagColor,
                color: ColorManager.kGreyColor,
              ),
              onTap: (position) {
                onTapDotIndicator(position);
              },
              dotsCount: dotCount,
              position: snapshot.data == null ? 0 : snapshot.data!,
            ),
          ),
          InkWell(
            onTap: onTapNext,
            child: StreamBuilder<int>(
              stream:outputDataTextStart,
              builder:(context, snapshot)=> 
              Text(snapshot.data == null ? "next" : snapshot.data==dotCount-1? "start":"next",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15)),
            ),
          )
        ],
      ),
    );
  }
}
          // Container(
          //   width: 50,
          //   height: 50,
          //   child: ListView.separated(
          //     separatorBuilder: (context, index) =>
          //         Padding(padding: EdgeInsets.symmetric(horizontal: 2.5)),
          //     scrollDirection: Axis.horizontal,
          //     itemBuilder: (context, index) => CircleAvatar(
          //       radius: 5,
          //       backgroundColor: Colors.red,
          //     ),
          //     itemCount: 3,
          //   ),
          // ),
          