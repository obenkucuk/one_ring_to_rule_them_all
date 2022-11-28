import 'package:flutter/material.dart';

import '../../../components/text_field_x.dart';
import '../view/auth_view.dart';

class MailConfirmation extends StatelessWidget {
  final TextEditingController verificationController;
  final FocusNode focusNode;
  const MailConfirmation({
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
                text: 'Get Code ',
                style: null,
              ),
              TextSpan(
                text: 'you will receive an e-mail contains verification code.',
                style: null,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const Text("Verification Code", style: null),
        const SizedBox(height: 10),
        TextFieldX(
          textEditingController: verificationController,
          focusNode: focusNode,
          hintText: "Enter verification code",
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              child: const Text("Get Code", style: null),
              onPressed: () {
                debugPrint("get code");
              },
            ),
          ),
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
