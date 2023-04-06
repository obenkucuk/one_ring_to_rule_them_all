import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/app_colors_x.dart';
import 'package:flutter/material.dart';

class MaterialButtonX extends StatelessWidget {
  const MaterialButtonX({Key? key, required this.onTap, this.buttonText, this.borderRadius}) : super(key: key);

  final VoidCallback onTap;
  final String? buttonText;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return MaterialButton(
      onPressed: () => onTap(),
      shape: RoundedRectangleBorder(
        side: BorderSide.none, // BorderSide(color: Colors.black, width: 1.w),
        borderRadius: BorderRadius.circular(borderRadius ?? 10.w),
      ),
      padding: EdgeInsets.zero,
      height: 50.h,
      minWidth: 100.w,
      highlightColor: primary,
      disabledColor: Colors.red,
      colorBrightness: Brightness.dark,
      disabledElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      focusElevation: 0,
      elevation: 0,
      focusColor: Colors.red,
      textColor: Colors.white,
      animationDuration: Duration.zero,
      hoverColor: AppColorsX.backgroundDark,
      color: primary,
      splashColor: Colors.transparent,
      enableFeedback: true,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //const Icon(Icons.numbers, color: Colors.amber),
          Text(buttonText ?? 'Button Yazısı Eksik!'),
        ],
      ),
    );
  }
}
