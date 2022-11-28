import 'package:flutter/material.dart';

import '../view/auth_view.dart';

class PhoneNumberRegistration extends StatelessWidget {
  final TextEditingController verificationController;
  final FocusNode focusNode;
  const PhoneNumberRegistration({
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
              TextSpan(
                text: 'Please register your phone number to use two-factor authentication.',
                style: null,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text("Phone Number", style: null),
        const SizedBox(height: 10),
        TextInputX(
          textEditingController: verificationController,
          focusNode: focusNode,
          hintText: "Enter phone number",
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
