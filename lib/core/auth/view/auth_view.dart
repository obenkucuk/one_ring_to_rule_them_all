import 'package:base_application/core/auth_screen/widget/string_extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../theme/text_style.dart';
import '../controller/auth_controller.dart';
import '../widget/custom_form_field.dart';
import '../widget/date_formater.dart';
import '../widget/utilities.dart';

part 'login_view.dart';
part 'register_view.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        controller: controller.pageController.value,
        itemCount: 2,
        itemBuilder: (context, index) => Center(
          child: index == 0 ? const _LoginView() : const _RegisterView(),
        ),
      ),
    );
  }
}
