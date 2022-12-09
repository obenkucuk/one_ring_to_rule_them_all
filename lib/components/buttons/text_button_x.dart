import 'package:flutter/material.dart';

class TextButtonX extends StatelessWidget {
  const TextButtonX({
    Key? key,
    required this.onTap,
    this.text,
    this.alignment,
  }) : super(key: key);

  final VoidCallback onTap;
  final String? text;
  final Alignment? alignment;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        alignment: alignment,
        minimumSize: Size.zero,
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      autofocus: true,
      onPressed: () => onTap(),
      child: Text(text ?? "Text Verilmedi!", style: null),
    );
  }
}
