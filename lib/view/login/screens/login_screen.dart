import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_new/controller/login/login_screen_controller.dart';
import 'package:quiz_app_new/core/resources/color_manager.dart';

import '../widgets/custom_logo_login_screen.dart';
import '../../../core/widgets/custom_material_button.dart';
import '../widgets/custom_text_enter_your_name.dart';
import '../widgets/custom_text_form_field_name_login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginScreenController _loginScreenController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginScreenController = LoginScreenController();
  }

  @override
  void dispose() {
    _loginScreenController.OnDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomLogoLoginScreen(),
              Column(
                children: [
                  CustomTextEnterYourName(),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextFormFieldNameLoginScreen(
                    validator: (value) {
                      return _loginScreenController.validateName(value);
                    },
                    onChanged: (value) {
                      _loginScreenController.onChangeTextFormField();
                    },
                    keyForm: _loginScreenController.formKeyName,
                    controllerName:
                        _loginScreenController.controllerNameTextFiled,
                  ),
                ],
              ),
              CustomMaterialBotton(
                isActiveOutputStream:
                    _loginScreenController.isActiveOutputStream,
                onPressed: () {
                  _loginScreenController.navigateToQuizApp(context);
                },
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/loginScreen.png",
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
