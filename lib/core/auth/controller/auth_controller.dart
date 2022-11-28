import 'package:auto_route/auto_route.dart';
import 'package:base_application/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/confirmation_view.dart';
import '../widget/forgot_password.dart';
import '../widget/mail_confirmation.dart';
import '../widget/security_verification.dart';
import '../widget/terms_of_use.dart';

enum RegisterUpdateKeys { termsOfUse }

class AuthController extends GetxController {
  TextEditingController signInEmailController = TextEditingController();
  TextEditingController signInPasswordController = TextEditingController();

  TextEditingController signUpEmailController = TextEditingController();
  TextEditingController signUpPasswordController = TextEditingController();

  final Rx<PageController> pageController = PageController().obs;

  String signInEmail = "";
  String signInPassword = "";

  final RxBool isSignUpEmailValid = false.obs;

  ///
  goToMainPage() => context.replaceRoute(const MainRoute());

  alreadyHaveAccount() {
    pageController.value.animateToPage(1, duration: const Duration(seconds: 1), curve: Curves.easeInOutQuint);
  }

  /// Yeni yerler
  /// login
  GlobalKey scaffoldKey = GlobalKey();
  GlobalKey scaffoldKeyLogin = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  BuildContext get context => scaffoldKey.currentState!.context;

  final RxBool isPasswordHidden = true.obs;

  changePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
    passwordFocusNode.requestFocus();
  }

  createAccount() => debugPrint("goto create account view");

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

  login() => bottomSheet(
        title: "Security Verification",
        widget: SecurityVerification(
          emailVerificationController: emailVerificationController,
          emailFocusNode: emailVerificationFocusNode,
          phoneVerificationController: phoneVerificationController,
          phoneFocusNode: phoneVerificationFocusNode,
        ),
      );

  final emailVerificationController = TextEditingController();
  final emailVerificationFocusNode = FocusNode();
  final phoneVerificationController = TextEditingController();
  final phoneVerificationFocusNode = FocusNode();

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
    passwordFocusNode.addListener(() {
      if (!passwordFocusNode.hasFocus) {
        isPasswordHidden.value = true;
      }
    });
  }

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
    forgotPasswordEmailVerificationController.dispose();
    forgotPasswordVerificationFocusNode.dispose();
    emailVerificationController.dispose();
    emailVerificationFocusNode.dispose();
    phoneVerificationController.dispose();
    phoneVerificationFocusNode.dispose();
  }

  /// register view
  final scaffoldKeyRegister = GlobalKey();
  final formKey = GlobalKey<FormState>();

  final RxBool _acceptTermsOfUse = false.obs;
  final RxBool acceptCommercial = false.obs;

  FocusNode passwordFocusNodeRegister = FocusNode();
  FocusNode passwordAgainFocusNode = FocusNode();

  final RxBool isPasswordHiddenRegister = true.obs;

  BuildContext get contextRegister => scaffoldKeyRegister.currentContext!;

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
    passwordFocusNode.requestFocus();
  }

  final RxBool isPasswordAgainHidden = true.obs;
  changePasswordAgainVisibility() {
    isPasswordAgainHidden.value = !isPasswordAgainHidden.value;
    passwordAgainFocusNode.requestFocus();
  }

  validateAllFields() {
    if ((formKey.currentState!.validate() && acceptTermsOfUse)) {
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
      context: contextRegister,
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