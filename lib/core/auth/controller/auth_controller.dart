import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/confirmation_view.dart';
import '../widget/forgot_password.dart';
import '../widget/mail_confirmation.dart';
import '../widget/terms_of_use.dart';

enum RegisterUpdateKeys { termsOfUse }

class AuthController extends GetxController {
  final Rx<PageController> pageController = PageController().obs;
  GlobalKey scaffoldKey = GlobalKey();
  BuildContext get context => scaffoldKey.currentState!.context;

  /// LoginView
  final RxBool isPasswordHidden = true.obs;
  final List<String> emailHintList = ['Enter your e-mail', "Please submit an proper e-mail address"];
  final RxInt firstIndex = 0.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final emailFocus = FocusNode();
  final passwordFocus = FocusNode();

  updateHintText(List<String> list, int index) {
    return list[index];
  }

  changePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
    passwordFocus.requestFocus();
  }

  createAccount() => pageController.value.animateToPage(
        1,
        duration: const Duration(milliseconds: 990),
        curve: Curves.easeInToLinear,
      );

  void gestureTap() {
    FocusScope.of(context).unfocus();
    isPasswordHidden.value = true;
  }

  final forgotPasswordEmailVerificationController = TextEditingController();
  final forgotPasswordVerificationFocusNode = FocusNode();

  forgotPassword() => bottomSheet(
        title: "Forgot Password?",
        widget: ForgotPassword(
          verificationController: forgotPasswordEmailVerificationController,
          focusNode: forgotPasswordVerificationFocusNode,
        ),
      );

  login() => print("login tıklandı");

  bottomSheet({required String title, required Widget widget}) async {
    await showModalBottomSheet<String>(
      enableDrag: false,
      isScrollControlled: true,
      context: context,
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: widget,
      ),
    );
  }

  @override
  void onReady() {
    super.onReady();

    /// şifreyi otomatik gizlemek için
    passwordFocus.addListener(() {
      if (!passwordFocus.hasFocus) {
        isPasswordHidden.value = true;
      }
    });
  }

  @override
  void onClose() {
    super.onClose();

    passwordFocus.dispose();
    forgotPasswordEmailVerificationController.dispose();
    forgotPasswordVerificationFocusNode.dispose();
  }

  /// register view

  final formKeyRegister = GlobalKey<FormState>();

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

  tapTermsOfUse() => bottomSheet(title: "Terms of Use", widget: const TermsOfUse());

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
      bottomSheet(
        title: "E-Mail Confirmation",
        widget: MailConfirmation(verificationController: verificationController, focusNode: verificationFocusNode),
      );
    }
  }

  bottomSheetRegister({required String title, required Widget widget}) async {
    await showModalBottomSheet<String>(
      enableDrag: false,
      isScrollControlled: true,
      context: context,
      builder: (context) => Confirmationwidget(
        title: title,
        widget: widget,
      ),
    );
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
