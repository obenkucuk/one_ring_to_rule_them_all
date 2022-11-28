import 'package:base_application/core/screen_utility/size_extension.dart';
import 'package:flutter/material.dart';

class MaterialButtonX extends StatelessWidget {
  const MaterialButtonX({
    Key? key,
    required this.onTap,
    this.buttonText,
  }) : super(key: key);

  final VoidCallback onTap;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
      padding: EdgeInsets.symmetric(vertical: 0.h),
      height: 50.h,
      minWidth: 100.w,
      highlightColor: Colors.green,
      disabledColor: Colors.red,
      colorBrightness: Brightness.dark,
      disabledElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      focusElevation: 0,
      elevation: 0,
      focusColor: Colors.red,
      textColor: Colors.redAccent,
      animationDuration: Duration.zero,
      hoverColor: Colors.green,
      color: Colors.grey,
      splashColor: Colors.transparent,
      enableFeedback: true,
      onPressed: () => onTap(),
      child: Text(buttonText ?? "Button Yazısı Eksik!"),
    );
  }
}
