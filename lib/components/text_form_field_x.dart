import 'package:base_application/core/screen_utility/size_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldX extends StatelessWidget {
  final String hintText;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final FocusNode? focusNode;
  final bool? isFinalFormElement;
  final Function(String)? onChanged;
  final AutovalidateMode? autovalidateMode;
  final Color? fillColor;

  const TextFormFieldX({
    Key? key,
    required this.hintText,
    this.suffixIcon,
    this.inputFormatters,
    this.validator,
    this.keyboardType,
    this.obscureText,
    this.focusNode,
    this.isFinalFormElement,
    this.onChanged,
    this.autovalidateMode,
    this.fillColor,
  }) : super(key: key);

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
      onChanged: (value) => onChanged!(value),
      obscuringCharacter: '•',
      onTap: () => print("Text Alanı Üzerine tıklandı"),
      toolbarOptions: const ToolbarOptions(copy: true, paste: true, selectAll: true),
      decoration: InputDecoration(
        fillColor: fillColor,
        hintText: hintText,
        hintStyle: null,
        suffixIcon: suffixIcon,
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.w),
          borderSide: BorderSide.none,
          gapPadding: 0,
        ),
      ),
    );
  }
}
