import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/login_controller.dart';
import 'view/login_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /// NOT: AuthController uygulama çalışırken sürekli çalışacağı için...
    /// Get.put(LoginController());
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => const LoginView(),
    );
  }
}
