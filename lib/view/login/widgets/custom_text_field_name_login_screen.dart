

import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';

class CustomTextFieldNameLoginScreen extends StatelessWidget {
  const CustomTextFieldNameLoginScreen({
    super.key, required this.onChanged,
  });
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      cursorColor: ColorManager.kPrimaryColor,
        decoration: InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
    ));
  }
}
