import 'package:flutter/material.dart';

import '../view/auth_view.dart';

class ForgotPassword extends StatelessWidget {
  final TextEditingController verificationController;
  final FocusNode focusNode;
  const ForgotPassword({
    super.key,
    required this.verificationController,
    required this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(text: 'After click ', style: null),
              TextSpan(
                text: 'Reset Password ',
                style: null,
              ),
              TextSpan(
                text: 'button you will receive an e-mail with instructions on how to reset your password.',
                style: null,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Withdrawals will be disabled for 24 hours after you make this change to protect your account.",
          style: null,
        ),
        const SizedBox(height: 20),
        const Text("E-Mail Address", style: null),
        const SizedBox(height: 10),
        TextInputX(
          textEditingController: verificationController,
          focusNode: focusNode,
          hintText: "Enter e-mail address",
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            return;
          },
          child: null,
        ),
      ],
    );
  }
}
