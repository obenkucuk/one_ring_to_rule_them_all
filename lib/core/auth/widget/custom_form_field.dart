import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.inputFormatters,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.focusNode,
    this.isFinalFormElement,
    required this.onChanged,
    this.autovalidateMode,
    this.fillColor,
  }) : super(key: key);
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final FocusNode? focusNode;
  final bool? isFinalFormElement;
  final Function(String) onChanged;
  final AutovalidateMode? autovalidateMode;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
      textInputAction: isFinalFormElement == null ? TextInputAction.next : TextInputAction.done,
      focusNode: focusNode,
      autocorrect: false,
      keyboardType: keyboardType ?? TextInputType.text,
      inputFormatters: inputFormatters,
      validator: validator,
      obscureText: obscureText ?? false,
      onChanged: (value) => onChanged(value),
      decoration: InputDecoration(
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: null,
        suffixIcon: suffixIcon ?? const SizedBox(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        contentPadding: const EdgeInsets.only(left: 10),
      ),
    );
  }
}
