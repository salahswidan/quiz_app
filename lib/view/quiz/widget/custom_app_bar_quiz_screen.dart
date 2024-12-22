import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';

class CustomAppBarQuizScreen extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarQuizScreen({
    super.key,
    required this.onTap, required this.text,
  });
  final GestureTapCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 160,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: Row(children: [
          InkWell(
            onTap: onTap ,
            child: Icon(
              Icons.arrow_back_ios,
              size: 17,
              color: ColorManager.kPrimaryColor,
            ),
          ),
          Text(
            "Previous",
            style: TextStyle(
                color: ColorManager.kPrimaryColor,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          )
        ]),
      ),
      title: Text(
        "$text",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      backgroundColor: ColorManager.kLightWightColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, kToolbarHeight);
}
