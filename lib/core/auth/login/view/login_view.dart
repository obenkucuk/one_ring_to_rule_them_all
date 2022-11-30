import 'package:base_application/core/auth/login/widget/string_extensions.dart';
import 'package:base_application/core/screen_utility/size_extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../components/icon_button_x.dart';
import '../../../../components/material_button_x.dart';
import '../../../../components/text_button_x.dart';
import '../../../../components/text_field_x.dart';
import '../../../../theme/text_style.dart';
import '../controller/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        controller.isPasswordHidden.value = true;
      },
      child: Scaffold(
        key: controller.scaffoldKey,
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                MaterialButtonX(
                  borderRadius: 0.w,
                  buttonText: "Login with Google",
                  onTap: () => controller.login(),
                ),
                const Text("E-Mail Address", style: null),
                SizedBox(height: 10.h),
                TextFieldX(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Enter your e-mail',
                  errorText: "Please submit an proper e-mail address",
                  inputFormatters: const [],
                  focusNode: controller.emailFocus,
                  nextFocus: controller.passwordFocus,
                  validator: (val) => val.isValidEmail ? true : false,
                  onChanged: (val) {
                    controller.isEmailValid(val.isEmail);
                    controller.emailText(val);
                  },
                ),
                SizedBox(height: 30.h),
                const Text("Password", style: null),
                SizedBox(height: 10.h),
                Obx(
                  () => TextFieldX(
                    focusNode: controller.passwordFocus,
                    hintText: "Enter your password",
                    suffixIcon: IconButtonX(
                      onTap: () => controller.changePasswordVisibility(),
                      buttonClicked: controller.isPasswordHidden.value,
                      icon:
                          controller.isPasswordHidden.isTrue ? CupertinoIcons.eye_fill : CupertinoIcons.eye_slash_fill,
                    ),
                    obscureText: controller.isPasswordHidden.value,
                  ),
                ),
                TextButtonX(
                  alignment: Alignment.centerLeft,
                  text: "Şifremi Unuttum",
                  onTap: () => controller.forgotPassword(),
                ),
                SizedBox(height: 20.h),
                MaterialButtonX(
                  buttonText: "Giriş Yap",
                  onTap: () => controller.login(),
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: 'Hesabınız yoksa ', style: TextStylesX(context).s14W500),
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () => controller.createAccount(),
                            text: 'Ücretsiz Üyelik ',
                            style: TextStylesX(context).s14W500.copyWith(color: Colors.amber),
                          ),
                          TextSpan(
                            text: 'oluşturun.',
                            style: TextStylesX(context).s14W500,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
