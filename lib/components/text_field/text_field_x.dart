import 'package:base_application/core/constants/size_constants.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldX extends StatefulWidget {
  final TextEditingController? textEditingController;
  final FocusNode focusNode;
  final String? hintText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final FocusNode? nextFocus;
  final Color? fillColor;
  final double? height;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool Function(String)? validator;
  final TextInputAction? textInputAction;
  final Function(String)? onFinished;
  final double? borderRadius;
  final double? contentPadding;

  const TextFieldX({
    super.key,
    this.textEditingController,
    required this.focusNode,
    this.hintText,
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
    this.errorText,
    this.onFinished,
    this.borderRadius,
    this.contentPadding,
  });

  @override
  State<TextFieldX> createState() => _TextFieldXState();
}

class _TextFieldXState extends State<TextFieldX> {
  final textEditingController = TextEditingController();
  String text = "";
  String? hintText;
  Color hintColor = Colors.grey.shade700;

  @override
  void initState() {
    super.initState();
    hintText = widget.hintText;
    widget.focusNode.addListener(() {
      if (!widget.focusNode.hasFocus) {
        validate(textEditingController.text);
      }
    });
  }

  validate(String value) async {
    if (widget.validator != null) {
      if (widget.validator!(value)) {
        if (widget.nextFocus != null) FocusScope.of(context).requestFocus(widget.nextFocus);
      } else {
        text = textEditingController.text;
        textEditingController.clear();
        setState(() => hintText = widget.errorText);
        setState(() => hintColor = Colors.redAccent);
        await Future.delayed(const Duration(seconds: 2)).then((value) {
          if (mounted) {
            setState(() => hintText = widget.hintText);
            textEditingController.text = text;
          }
        });
      }
    } else {
      if (widget.nextFocus != null) FocusScope.of(context).requestFocus(widget.nextFocus);
    }
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 50.h,
      child: TextField(
        style: s14W500.copyWith(color: Colors.black),
        controller: textEditingController,
        obscuringCharacter: '•',
        keyboardType: widget.keyboardType ?? TextInputType.visiblePassword,
        onChanged: (value) => widget.onChanged != null ? widget.onChanged!(value) : null,
        onSubmitted: (value) {},
        onEditingComplete: () => validate(textEditingController.text),
        textInputAction: widget.textInputAction ?? TextInputAction.next,
        inputFormatters: widget.inputFormatters,
        focusNode: widget.focusNode,
        obscureText: widget.obscureText ?? false,
        autocorrect: false,
        decoration: InputDecoration(
          fillColor: widget.fillColor,
          hintText: hintText,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            color: hintColor,
            fontSize: 14,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: widget.contentPadding ?? padding10.w),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
            borderSide: BorderSide.none,
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
