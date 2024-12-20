import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/color_manager.dart';

class CustomMaterialBotton extends StatelessWidget {
  const CustomMaterialBotton(
      {super.key, required this.onPressed, required this.isActiveOutputStream, });
  final VoidCallback onPressed;
  final Stream<bool> isActiveOutputStream;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: isActiveOutputStream,
      builder: (context, snapshot) => 
      MaterialButton(
        height: 10,
        minWidth: 20,
        padding: EdgeInsets.all(0),
        onPressed:snapshot.data == null ? null :snapshot.data == true ? onPressed : null,
        child: Container(
          width: double.infinity,
          height: 59,
          decoration: BoxDecoration(
              color:snapshot.data == null ? ColorManager.kGreyColor :snapshot.data == true? ColorManager.kPrimaryColor : ColorManager.kGreyColor,
                  
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              "Start",
              style: GoogleFonts.baloo2(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
