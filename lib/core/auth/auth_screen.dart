import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/auth_controller.dart';
import 'view/auth_view.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ///NOT: AuthController uygulama çalışırken sürekli çalışacağı için...
    Get.put(AuthController());
    return GetBuilder<AuthController>(
      init: AuthController(),
      builder: (controller) => const AuthView(),
    );
  }
}
