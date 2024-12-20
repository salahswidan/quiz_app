import 'dart:async';

import 'package:flutter/material.dart';

class LoginScreenController {
  String name = "";
  late GlobalKey<FormState> formKeyName ;
  bool bottonIsActive = false;
  late StreamController<bool> streamControllerBottonState ;
  late Sink<bool> inputDataBottonState ;
  late Stream<bool> isActiveOutputStream ;
  LoginScreenController(){
    formKeyName = GlobalKey ();
    streamControllerBottonState = StreamController();
    inputDataBottonState = streamControllerBottonState.sink;
    isActiveOutputStream = streamControllerBottonState.stream;
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
}