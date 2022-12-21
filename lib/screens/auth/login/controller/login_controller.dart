import 'dart:developer';

import 'package:base_application/router/router.dart';
import 'package:base_application/session_services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

enum RegisterUpdateKeys { termsOfUse }

class LoginController extends GetxController {
  GlobalKey scaffoldKey = GlobalKey();
  BuildContext get context => scaffoldKey.currentState!.context;

  final RxBool isPasswordHidden = true.obs;

  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  final RxString emailText = ''.obs;
  final RxString passwordText = ''.obs;
  final RxBool isEmailValid = false.obs;

  void changePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
    passwordFocus.requestFocus();
  }

  void createAccount() {
    log('create account sayfasına yolla');
    // context.router.push(const RegisterRouter());
  }

  void forgotPassword() => log('forgor password');

  void login() {
    Get.find<SessionServices>().isLogin(true);
    context.goNamed(RoutesNames.main);
  }

  @override
  void onReady() {
    super.onReady();

    /// şifreyi otomatik gizlemek için
    passwordFocus.addListener(() => (!passwordFocus.hasFocus) ? isPasswordHidden(true) : isPasswordHidden(false));
  }

  @override
  void onClose() {
    super.onClose();
    passwordFocus.removeListener(() {});
    emailFocus.dispose();
    passwordFocus.dispose();
  }
}

// AuthBadRequestModel signInBadRequestModel = AuthBadRequestModel();
// AuthBadRequestModel signUpBadRequestModel = AuthBadRequestModel();

// AuthModel signInModel = AuthModel();
// AuthModel signUpModel = AuthModel();

//   signUp() async {
//   final Uri signUpUri = Uri(
//     scheme: 'https',
//     host: HttpUrl.host,
//     path: 'v1/accounts:signUp',
//     queryParameters: {
//       "key": HttpUrl.firebaseWebApiKey,
//       "returnSecureToken": "true",
//       "email": signUpEmailController.text,
//       "password": signUpPasswordController.text,
//     },
//   );

//   if (!isSignUpEmailValid.value) {
//     //print("email sıkıntılı");
//   } else if (signUpPasswordController.text.length < 6) {
//     // print("şifre 5 karakterden daha kısa");
//   } else {
//     try {
//       /// Post request to sign up app.
//       await NetworkServices().post(signUpUri).then(
//         (response) async {
//           signUpModel = authModelFromJson(response.body);
//           final Uri emailVerifyUri = Uri(
//             scheme: 'https',
//             host: HttpUrl.host,
//             path: 'v1/accounts:sendOobCode',
//             queryParameters: {
//               "key": HttpUrl.firebaseWebApiKey,
//               "requestType": "VERIFY_EMAIL",
//               "idToken": signUpModel.idToken,
//             },
//           );

//           /// Post request to verify email.
//           await NetworkServices().post(emailVerifyUri);
//         },
//       );
//     } on StatusException catch (e) {
//       if (e.statusCode == HttpStatus.badRequest) {
//         signUpBadRequestModel = authBadRequestModelFromJson(e.statusBody!);
//         // print(signUpBadRequestModel.error!.message);
//       }
//     }
//   }
// }

// signIn() async {
//   final Uri uri = Uri(
//     scheme: 'https',
//     host: HttpUrl.host,
//     path: 'v1/accounts:signInWithPassword',
//     queryParameters: {
//       "key": HttpUrl.firebaseWebApiKey,
//       "returnSecureToken": "true",
//       "email": signInEmail,
//       "password": signInPassword,
//     },
//   );

//   if (signInEmail.isValidEmail()) {
//     try {
//       final response = await NetworkServices().post(uri);

//       signInModel = authModelFromJson(response.body);
//     } on StatusException catch (e) {
//       if (e.statusCode == HttpStatus.badRequest) {
//         signInBadRequestModel = authBadRequestModelFromJson(e.statusBody!);
//       }
//     }
//   } else {
//     // print("email sıkıntılı");
//   }
// }
