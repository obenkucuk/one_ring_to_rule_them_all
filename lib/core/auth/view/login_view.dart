part of "auth_view.dart";

class _LoginView extends GetView<AuthController> {
  const _LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKeyLogin,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("E-Mail Address", style: null),
              const SizedBox(height: 10),
              TextInputX(
                textEditingController: controller.emailController,
                focusNode: controller.emailFocusNode,
                hintText: "Enter your e-mail address",
                nextFocus: controller.passwordFocusNode,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Password", style: null),
                  TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    autofocus: true,
                    onPressed: () => controller.forgotPassword(),
                    child: const Text("Şifremi Unuttum", style: null),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Obx(
                () => TextInputX(
                  textEditingController: controller.passwordController,
                  focusNode: controller.passwordFocusNode,
                  hintText: "Enter your password",
                  suffixIcon: IconButton(
                    splashRadius: 1,
                    icon: Icon(controller.isPasswordHidden.isTrue ? Icons.remove_red_eye : Icons.abc),
                    onPressed: () => controller.changePasswordVisibility(),
                  ),
                  obscureText: controller.isPasswordHidden.value,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: ElevatedButton(
                  onPressed: () => controller.login(),
                  child: const Text("Giriş Yap"),
                ),
              ),
              const SizedBox(height: 20),
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
                          style: TextStylesX(context).s14W500,
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
        ),
      ),
    );
  }
}

class TextInputX extends StatelessWidget {
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final FocusNode? nextFocus;
  final Color? fillColor;

  const TextInputX({
    super.key,
    required this.textEditingController,
    required this.focusNode,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.nextFocus,
    this.fillColor,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (v) {
        if (nextFocus != null) FocusScope.of(context).requestFocus(nextFocus);
      },
      textInputAction: TextInputAction.next,
      controller: textEditingController,
      focusNode: focusNode,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        fillColor: fillColor,
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.only(left: 10),
      ),
    );
  }
}
