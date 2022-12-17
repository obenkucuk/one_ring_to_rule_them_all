import 'package:base_application/screens/auth/register/controller/register_controller.dart';
import 'package:base_application/screens/auth/register/view/register_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      init: RegisterController(),
      builder: (controller) => const RegisterView(),
    );
  }
}
