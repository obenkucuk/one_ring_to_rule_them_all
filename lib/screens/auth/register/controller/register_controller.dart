import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../login/controller/login_controller.dart';

class RegisterController extends GetxController {
  final formKeyRegister = GlobalKey<FormState>();
  final RxBool isPasswordHidden = true.obs;

  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  final RxBool _acceptTermsOfUse = false.obs;
  final RxBool acceptCommercial = false.obs;

  FocusNode passwordFocusNodeRegister = FocusNode();
  FocusNode passwordAgainFocusNode = FocusNode();

  final RxBool isPasswordHiddenRegister = true.obs;

  bool get acceptTermsOfUse => _acceptTermsOfUse.value;
  set acceptTermsOfUse(bool value) {
    _acceptTermsOfUse.value = value;
    update([RegisterUpdateKeys.termsOfUse]);
  }

  final verificationController = TextEditingController();
  final verificationFocusNode = FocusNode();

  tapTermsOfUse() => log("terms of use sayfası");

  changePasswordVisibilityRegister() {
    isPasswordHidden.value = !isPasswordHidden.value;
    passwordFocus.requestFocus();
  }

  final RxBool isPasswordAgainHidden = true.obs;
  changePasswordAgainVisibility() {
    isPasswordAgainHidden.value = !isPasswordAgainHidden.value;
    passwordAgainFocusNode.requestFocus();
  }

  validateAllFields() {
    if ((formKeyRegister.currentState!.validate() && acceptTermsOfUse)) {
      debugPrint("başarılı");
    } else {
      debugPrint("alanlarda doldurulmamış yerler var");
    }
  }
}
