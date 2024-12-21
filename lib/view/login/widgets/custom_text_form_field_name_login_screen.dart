import 'package:flutter/material.dart';

import '../../../core/resources/color_manager.dart';

class CustomTextFormFieldNameLoginScreen extends StatelessWidget {
  const CustomTextFormFieldNameLoginScreen({
    super.key,
    required this.onChanged, required this.keyForm, this.validator, required this.controllerName,
  });
  final ValueChanged<String> onChanged;
  final GlobalKey<FormState> keyForm;
  final FormFieldValidator<String>? validator;
  final TextEditingController controllerName;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: TextFormField(
        controller: controllerName,
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
