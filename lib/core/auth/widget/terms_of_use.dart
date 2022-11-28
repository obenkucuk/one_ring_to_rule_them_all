import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/auth_controller.dart';

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      id: RegisterUpdateKeys.termsOfUse,
      builder: (controller) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20),
          const Text(
            "Hizmetin Temel Nitelikleri",
            style: null,
          ),
          const SizedBox(height: 10),
          const Text(
            "İşbu Site, Kullanıcı'lara, birbirleri ile alış-satış işlemleri yapabilmesi için bir online kripto para alım-satım platformu sağlamakta olup ICRYPEX yalnızca bu alım-satım işlemine imkân sağlayan alt yapıyı temin eder.",
            style: null,
          ),
          const SizedBox(height: 20),
          const Text(
            "Hizmet Masraflarına İlişkin Bilgiler",
            style: null,
          ),
          const SizedBox(height: 10),
          const Text(
            "İşbu Site, Kullanıcı'lara, birbirleri ile alış-satış işlemleri yapabilmesi için bir online kripto para alım-satım platformu sağlamakta olup ICRYPEX yalnızca bu alım-satım işlemine imkân sağlayan alt yapıyı temin eder.",
            style: null,
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              SizedBox.square(
                dimension: 24,
                child: Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: controller.acceptTermsOfUse,
                  splashRadius: 0,
                  onChanged: (val) => controller.acceptTermsOfUse = val!,
                ),
              ),
              const SizedBox(width: 10),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(text: 'I have read and agree to the ', style: null),
                    TextSpan(
                      text: 'Terms of Use',
                      style: null,
                    ),
                    TextSpan(text: '.', style: null),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
