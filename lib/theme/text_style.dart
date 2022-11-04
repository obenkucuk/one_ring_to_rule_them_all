import 'package:flutter/material.dart';

class TextStyles {
  final BuildContext context;

  TextStyles(this.context);

  TextStyle s8W300Dark() => Theme.of(context).textTheme.subtitle2!.copyWith(fontWeight: FontWeight.w300);
}
