import 'package:base_application/core/screen_utility/size_extension.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldX extends StatelessWidget {
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final FocusNode? nextFocus;
  final Color? fillColor;
  final double? height;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final void Function(String value)? validator;
  final TextInputAction? textInputAction;

  const TextFieldX({
    super.key,
    this.textEditingController,
    this.focusNode,
    required this.hintText,
    this.suffixIcon,
    this.obscureText,
    this.nextFocus,
    this.fillColor,
    this.prefixIcon,
    this.height,
    this.inputFormatters,
    this.onChanged,
    this.keyboardType,
    this.validator,
    this.textInputAction,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50.h,
      child: TextField(
        style: TextStylesX(context).s14W300.copyWith(),
        controller: textEditingController,
        keyboardType: keyboardType,
        onChanged: (value) => onChanged!(value),
        obscuringCharacter: '•',
        onSubmitted: (value) async {
          if (nextFocus != null) FocusScope.of(context).requestFocus(nextFocus);
          textEditingController?.clear();
          await Future.delayed(const Duration(seconds: 1));
          textEditingController!.text = "dsfsdsf";
          return validator != null ? validator!(value) : null;
        },
        textInputAction: textInputAction ?? TextInputAction.next,
        inputFormatters: inputFormatters,
        focusNode: focusNode,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          fillColor: fillColor,
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          errorStyle: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 14),
          contentPadding: EdgeInsets.only(left: 10.w),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.w),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
