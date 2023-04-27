import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/app_colors.dart';
import 'package:flutter/material.dart';

/// Bütün sayfalardaki bottom sheetler buradan çağırılır.
Future<T?> showBottomSheetX<T>({
  required BuildContext context,
  String? title,
  Widget? widget,
}) async {
  var result = await showModalBottomSheet<T>(
    context: context,
    backgroundColor: AppColorsX.backgroundLight,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.w),
        topRight: Radius.circular(20.w),
      ),
    ),
    builder: (BuildContext context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title ?? 'Title is not given!', style: null),
              ],
            ),
          ),
          const Divider(color: Colors.amber),
          widget ?? const SizedBox(),
        ],
      );
    },
  );

  /// İçine aldığı widget bir değer döndürürse result ona eşit olur.

  /// Örneğin:  Navigator.pop(context, "Dönen Değer"); şeklinde
  /// kapatılırsa bottomSheet result String tipinde yukarıdaki yazıyı
  /// geri döndürür.
  /// Navigator.of(context).pop<String>("String Değer");

  return result;
}



  /// Örnek Kullanımı:
  
  // forgotPassword() => showBottomSheetX(
  //       context: context,
  //       title: 'Forgot Password?',
  //     ).then((value) => print(value));

  /// buradaki value result a eşit olur.