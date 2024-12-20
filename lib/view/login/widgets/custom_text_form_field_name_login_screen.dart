import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';

class CustomTextFormFieldNameLoginScreen extends StatelessWidget {
  const CustomTextFormFieldNameLoginScreen({
    super.key,
    required this.onChanged, required this.keyForm, this.validator,
  });
  final ValueChanged<String> onChanged;
  final GlobalKey<FormState> keyForm;
  final FormFieldValidator<String>? validator;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: TextFormField(
          keyboardType: TextInputType.name,
          validator: validator,
          onChanged: onChanged,
          cursorColor: ColorManager.kPrimaryColor,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )),
    );
  }
}
