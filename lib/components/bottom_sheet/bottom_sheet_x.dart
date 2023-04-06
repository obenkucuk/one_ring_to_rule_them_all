import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:flutter/material.dart';

mixin BottomSheetX {
  /// Bütün sayfalardaki bottom sheetler buradan çağırılır.
  static Future<T?> showBottomSheet<T>(
    Widget widget,
    BuildContext context, {
    required String title,
  }) async {
    return showModalBottomSheet<T>(
      context: context,
      backgroundColor: Colors.orangeAccent.shade100,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      builder: (BuildContext context) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(title, style: Theme.of(context).textTheme.bodyMedium),
                  GestureDetector(
                    onTap: () => Navigator.maybePop(context),
                    child: const FittedBox(
                      fit: BoxFit.scaleDown,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.redAccent,
                        child: Center(
                          child: Icon(
                            size: 20,
                            Icons.close,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.black),
            widget,
          ],
        );
      },
    );
  }
}
