part of "auth_view.dart";

class _LoginView extends GetView<AuthController> {
  const _LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("E-Mail Address", style: null),
          SizedBox(height: 10.h),
          Obx(
            () => TextFieldX(
              textEditingController: controller.emailTextController,
              onChanged: (value) => debugPrint(value),
              keyboardType: TextInputType.emailAddress,
              hintText: controller.updateHintText(controller.emailHintList, controller.firstIndex.value),
              inputFormatters: const [],
              validator: (val) {
                if (!val.isValidEmail) {
                  print("doğro değiil");
                  controller.firstIndex.value = 1;
                }
              },
            ),
          ),
          SizedBox(height: 30.h),
          const Text("Password", style: null),
          SizedBox(height: 10.h),
          Obx(
            () => TextFieldX(
              onChanged: (value) => debugPrint(value),
              focusNode: controller.passwordFocusNode,
              hintText: "Enter your password",
              suffixIcon: IconButtonX(
                onTap: () => controller.changePasswordVisibility(),
                buttonClicked: controller.isPasswordHidden.value,
                icon: controller.isPasswordHidden.isTrue ? Icons.remove_red_eye : Icons.abc,
              ),
              obscureText: controller.isPasswordHidden.value,
            ),
          ),
          TextButtonX(
            alignment: Alignment.centerLeft,
            text: "Şifremi Unuttum",
            onTap: () => controller.forgotPassword(),
          ),
          SizedBox(height: 20.h),
          MaterialButtonX(
            buttonText: "Giriş Yap",
            onTap: () => controller.login(),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Hesabınız yoksa ', style: TextStylesX(context).s14W500),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () => controller.createAccount(),
                      text: 'Ücretsiz Üyelik ',
                      style: TextStylesX(context).s14W500.copyWith(color: Colors.amber),
                    ),
                    TextSpan(
                      text: 'oluşturun.',
                      style: TextStylesX(context).s14W500,
                    ),
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
