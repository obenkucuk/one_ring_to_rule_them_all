part of "auth_view.dart";

class _RegisterView extends GetView<AuthController> {
  const _RegisterView();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        controller.isPasswordHiddenRegister.value = true;
        controller.isPasswordAgainHidden.value = true;
      },
      child: Column(
        children: [
          Expanded(
            child: Form(
              key: controller.formKeyRegister,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 20),

                      /// İsim field
                      const Text("İsim", style: null),
                      const SizedBox(height: 5),
                      TextFormFieldX(
                        onChanged: (value) => debugPrint(value),
                        hintText: 'İsim',
                        inputFormatters: const [],
                        validator: (val) {
                          if (!val!.isValidName) return "Enter Valid Name";

                          return null;
                        },
                      ),
                      const SizedBox(height: 10),

                      /// Soyisim field
                      const Text("Soy İsim", style: null),
                      const SizedBox(height: 5),
                      TextFormFieldX(
                        onChanged: (value) => debugPrint(value),
                        hintText: 'Soy İsim',
                        inputFormatters: const [],
                        validator: (val) {
                          if (!val!.isValidName) return "Enter Valid Surname";

                          return null;
                        },
                      ),
                      const SizedBox(height: 10),

                      /// isLocalUser field
                      const Text("isLocalUser", style: null),
                      const SizedBox(height: 5),

                      const SizedBox(height: 10),

                      /// Nationality field
                      const Text("Nationality", style: null),
                      const SizedBox(height: 5),

                      const SizedBox(height: 10),

                      /// TCKN field
                      const Text("TCKN", style: null),
                      const SizedBox(height: 5),
                      TextFormFieldX(
                        onChanged: (value) => debugPrint(value),
                        keyboardType: TextInputType.number,
                        hintText: 'TCKN',
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                          FilteringTextInputFormatter.allow(RegExp(r"[0-9]")),
                        ],
                        validator: (val) {
                          if (!val!.isTCKN) return "Enter Valid TCKN";

                          return null;
                        },
                      ),
                      const SizedBox(height: 10),

                      /// Birth date field
                      const Text("Doğum Tarihi", style: null),
                      const SizedBox(height: 5),
                      TextFormFieldX(
                        onChanged: (value) => debugPrint(value),
                        keyboardType: TextInputType.datetime,
                        hintText: 'dd/MM/yyy',
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10),
                          FilteringTextInputFormatter.singleLineFormatter,
                          BirthTextInputFormatter(),
                        ],
                        validator: (value) => Utilities.birthDateValidator(value!),
                      ),
                      const SizedBox(height: 10),

                      /// E-mail field
                      const Text("E-Mail", style: null),
                      const SizedBox(height: 5),
                      TextFormFieldX(
                        onChanged: (value) => debugPrint(value),
                        keyboardType: TextInputType.emailAddress,
                        hintText: 'E-Mail',
                        inputFormatters: const [],
                        validator: (val) {
                          if (!val!.isValidEmail) return "Enter Valid E-Mail";

                          return null;
                        },
                      ),
                      const SizedBox(height: 10),

                      /// Password field
                      const Text("Password", style: null),
                      const SizedBox(height: 5),
                      Obx(
                        () => TextFormFieldX(
                          onChanged: (value) => debugPrint(value),
                          focusNode: controller.passwordFocusNode,
                          obscureText: controller.isPasswordHidden.value,
                          suffixIcon: IconButton(
                            splashRadius: 1,
                            icon: Icon(controller.isPasswordHidden.isTrue ? Icons.remove_red_eye : Icons.abc),
                            onPressed: () {},
                          ),
                          hintText: 'Password',
                          inputFormatters: const [],
                          validator: (val) {
                            if (val!.isEmpty) return "Şifre alanı boş bırakılamaz";

                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text("Password Again", style: null),
                      const SizedBox(height: 5),
                      Obx(
                        () => TextFormFieldX(
                          autovalidateMode: AutovalidateMode.always,
                          onChanged: (value) {
                            return;
                          },
                          focusNode: controller.passwordAgainFocusNode,
                          obscureText: controller.isPasswordAgainHidden.value,
                          suffixIcon: IconButton(
                            splashRadius: 1,
                            icon: Icon(controller.isPasswordHidden.isTrue ? Icons.remove_red_eye : Icons.abc),
                            onPressed: () => controller.changePasswordAgainVisibility(),
                          ),
                          hintText: 'Password Again',
                          inputFormatters: const [],
                          validator: (val) {
                            /// ilk password ile aynı mı diye kontrol et

                            return null;
                          },
                        ),
                      ),
                      const SizedBox(height: 10),

                      /// Referral field
                      const Text("Referral Code (Optional)", style: null),
                      const SizedBox(height: 5),
                      TextFormFieldX(
                        onChanged: (value) => debugPrint(value),
                        isFinalFormElement: true,
                        hintText: 'Enter Referral Code',
                        validator: (val) {
                          return;
                        },
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox.square(
                            dimension: 24,
                            child: Obx(
                              () => Checkbox(
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                value: controller.acceptTermsOfUse,
                                splashRadius: 0,
                                onChanged: (val) => controller.acceptTermsOfUse = val!,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          RichText(
                            text: TextSpan(
                              children: [
                                const TextSpan(text: 'I have read and agree to the ', style: null),
                                TextSpan(
                                  recognizer: TapGestureRecognizer()..onTap = () => controller.tapTermsOfUse(),
                                  text: 'Terms of Use',
                                  style: null,
                                ),
                                const TextSpan(text: '.', style: null),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox.square(
                            dimension: 24,
                            child: Obx(
                              () => Checkbox(
                                activeColor: Theme.of(context).primaryColor,
                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                value: controller.acceptCommercial.value,
                                splashRadius: 0,
                                onChanged: (val) => controller.acceptCommercial.value = val!,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Expanded(
                            child: Text(
                              overflow: TextOverflow.clip,
                              "Thereby give my consent to receiving commercial electronic messages via e-mail, phone and electronic communication channels regarding the products and services in accordance.",
                              style: null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () => controller.validateAllFields(),
                  child: const Text("Üye Ol"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
