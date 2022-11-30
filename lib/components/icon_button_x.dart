import 'package:base_application/core/screen_utility/size_extension.dart';
import 'package:flutter/material.dart';

class IconButtonX extends StatelessWidget {
  const IconButtonX({
    Key? key,
    required this.onTap,
    this.buttonClicked,
    this.icon,
  }) : super(key: key);

  final VoidCallback onTap;
  final bool? buttonClicked;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      hoverColor: Colors.transparent,
      highlightColor: Colors.amber,
      padding: EdgeInsets.zero,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w))),
        alignment: Alignment.centerRight,
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(horizontal: 10.w)),
      ),
      icon: Icon(icon),
      onPressed: () => onTap(),
    );
  }
}
