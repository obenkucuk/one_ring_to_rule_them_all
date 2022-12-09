import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MaterialButtonX extends StatelessWidget {
  final VoidCallback onTap;
  final String? buttonText;
  final double? borderRadius;

  const MaterialButtonX({
    Key? key,
    required this.onTap,
    this.buttonText,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 1.w),
        borderRadius: BorderRadius.circular(borderRadius ?? 10.w),
      ),
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
      color: AppColors.backgroundLight,
      splashColor: Colors.transparent,
      enableFeedback: true,
      onPressed: () => onTap(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(FontAwesomeIcons.google, color: Colors.amber),
          Text(buttonText ?? "Button Yazısı Eksik!"),
        ],
      ),
    );
  }
}
