import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegistrationViewContriller extends GetxController{

  // Observable boolean for password visibility
  var isPasswordHidden = true.obs;
  TextEditingController displayNameTextEditField  = TextEditingController();
  TextEditingController emailTextEditField = TextEditingController();
  TextEditingController passwordTextEditField  = TextEditingController();
  TextEditingController conformPasswordTextEditField = TextEditingController();

  // Method to toggle password visibility
  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

}