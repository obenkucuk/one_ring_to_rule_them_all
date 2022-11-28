import 'package:flutter/material.dart';
import '../../../components/text_field_x.dart';
import '../view/auth_view.dart';

class SecurityVerification extends StatelessWidget {
  final TextEditingController emailVerificationController;
  final TextEditingController phoneVerificationController;
  final FocusNode emailFocusNode;
  final FocusNode phoneFocusNode;
  const SecurityVerification({
    super.key,
    required this.emailVerificationController,
    required this.emailFocusNode,
    required this.phoneVerificationController,
    required this.phoneFocusNode,
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
                text: 'To secure your account, please complete the following verification. Please click ',
                style: null,
              ),
              TextSpan(
                text: 'Get Code ',
                style: null,
              ),
              TextSpan(
                text: 'to get your verification code.',
                style: null,
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "Please do not share these codes even ICRYPEX staff.",
          style: null,
        ),
        const SizedBox(height: 20),
        const Text("E-Mail Address Verification Code", style: null),
        const SizedBox(height: 10),
        TextFieldX(
          textEditingController: emailVerificationController,
          focusNode: emailFocusNode,
          hintText: "Enter verification code",
          nextFocus: phoneFocusNode,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              child: const Text("Get Code", style: null),
              onPressed: () {
                debugPrint("get email verification code");
              },
            ),
          ),
        ),
        const SizedBox(height: 20),
        const Text("Phone Number Verification Code", style: null),
        const SizedBox(height: 10),
        TextFieldX(
          textEditingController: phoneVerificationController,
          focusNode: phoneFocusNode,
          hintText: "Enter verification code",
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextButton(
              child: const Text("Get Code", style: null),
              onPressed: () {
                debugPrint("get phone number code");
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
