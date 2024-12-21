import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz_app_new/core/resources/route_manager.dart';

class LoginScreenController {
  late GlobalKey<FormState> formKeyName ;
  bool bottonIsActive = false;
  late StreamController<bool> streamControllerBottonState ;
  late Sink<bool> inputDataBottonState ;
  late Stream<bool> isActiveOutputStream ;
  late TextEditingController controllerNameTextFiled ;
  LoginScreenController(){
    formKeyName = GlobalKey ();
    streamControllerBottonState = StreamController();
    inputDataBottonState = streamControllerBottonState.sink;
    isActiveOutputStream = streamControllerBottonState.stream;
    controllerNameTextFiled = TextEditingController();
                          inputDataBottonState.add(bottonIsActive);

  }
  String? validateName(String? value){
                          if (value!.isEmpty) {
                        return "Please enter your name";
                      } else if (value.length < 4) {
                        return "Please enter at least 4 characters";
                      } else {
                        return null;
                      }
  }
  void onChangeTextFormField(){
      if (formKeyName.currentState!
                          .validate()) {
                        bottonIsActive = true;
                      } else {
                        bottonIsActive = false;
                      }
                      inputDataBottonState.add(bottonIsActive);
  }
  OnDispose(){
    inputDataBottonState.close();
    streamControllerBottonState.close();
  }
  void navigateToQuizApp(BuildContext context){
    Navigator.pushNamedAndRemoveUntil(
      arguments: controllerNameTextFiled.text,
      context, RoutesName.KQuizScreen, (route) => false);
  }
}