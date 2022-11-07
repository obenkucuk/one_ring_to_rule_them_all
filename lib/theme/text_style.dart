import 'package:flutter/material.dart';

class TextStyles {
  final BuildContext context;

  TextStyles(this.context);

  static TextStyle s8W300(BuildContext context) =>
      Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300);
}
