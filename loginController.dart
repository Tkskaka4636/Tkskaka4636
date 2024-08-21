import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';


class LoginController extends GetxController {
  // Observable boolean for password visibility
  var isPasswordHidden = true.obs;
  final switchView = 0.obs;
  TextEditingController emailTextEditField = TextEditingController();
  TextEditingController passwordTextEditField = TextEditingController();


  // Method to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void jumpToLoginWebView(){
    switchView.value = 1; // enter mobile screen
    update();
  }
  void jumpToRegistrationWebView()
  {
    switchView.value = 2; // enter mobile screen
    update();
  }
  void jumpToHomeWebView()
  {
    switchView.value = 0; // enter mobile screen
    update();
  }





}
