import 'package:flutter/material.dart';

class LoginScreenController {
  String name = "";
  late GlobalKey<FormState> formKeyName ;
  LoginScreenController(){
    formKeyName = GlobalKey ();
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
}