import 'dart:math' as math;

import 'package:base_application/components/dropdown/animated_dropdown.dart';
import 'package:base_application/core/constants/size_constants.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:flutter/material.dart';

import '../../theme/text_style.dart';

class MyDropdownWidget extends StatefulWidget {
  const MyDropdownWidget({
    super.key,
    this.title,
    this.backgroundColor,
    this.borderRadius,
    this.leftPadding,
    this.textStyle,
    this.updateTabIndex,
    required this.itemsList,
    required this.getSelectedValue,
    required this.dropdownWidth,
    this.positionOnTabBar,
    this.hintText,
    this.leftIcon,
    this.itemHeight,
    this.rightPadding,
  });

  final List<String> itemsList;
  final Function(String) getSelectedValue;
  final double? itemHeight;
  final String? title;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? leftPadding;
  final double? rightPadding;
  final TextStyle? textStyle;
  final double dropdownWidth;
  final int? positionOnTabBar;
  final String? hintText;
  final Function(int)? updateTabIndex;
  final String? leftIcon;

  @override
  State<MyDropdownWidget> createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  final GlobalKey dimensionKey = GlobalKey();

  late String selectedItem = widget.hintText ?? widget.itemsList.first;

  bool overlayIsVisible = false;

  late OverlayEntry? overlayEntry;
  OverlayState? overlayState;

  void showOverlay() {
    setState(() => overlayIsVisible = true);
    RenderBox renderBox = dimensionKey.currentContext!.findRenderObject() as RenderBox;
    Offset offset = renderBox.localToGlobal(Offset.zero);

    overlayEntry = OverlayEntry(builder: (context) {
      return SizedBox(
        width: MediaQueryX.width,
        height: MediaQueryX.height,
        child: Stack(
          children: [
            GestureDetector(
              onTap: () => hideOverlay(),
              child: const ColoredBox(color: Colors.transparent),
            ),
            Positioned(
              left: MediaQueryX.width - offset.dx > widget.dropdownWidth ? offset.dx : null,
              right: MediaQueryX.width - offset.dx < widget.dropdownWidth ? 0 + 20 : null,
              top: offset.dy + renderBox.size.height + 15.h,
              child: SizedBox(
                width: widget.dropdownWidth,
                height: widget.itemsList.length < 4
                    ? (widget.itemHeight == null ? padding15 : widget.itemHeight!) * 3 * widget.itemsList.length
                    : (widget.itemHeight == null ? padding15 : widget.itemHeight!) * 3 * 4,
                child: AnimatedDropdown(
                  padding: widget.leftPadding,
                  itemHeight: widget.itemHeight,
                  textStyle: widget.textStyle,
                  itemsList: widget.itemsList,
                  selectedPair: selectedItem,
                  onTap: (val) {
                    widget.getSelectedValue(val);
                    setState(() => selectedItem = val);
                    hideOverlay();
                  },
                ),
              ),
            ),
          ],
        ),
      );
    });
    overlayState = Overlay.of(context);

    overlayState!.insert(overlayEntry!);
  }

  void hideOverlay() {
    if (overlayEntry == null) return;

    overlayEntry!.remove();
    overlayEntry = null;
    setState(() => overlayIsVisible = false);
  }

  @override
  void dispose() {
    super.dispose();
    overlayEntry!.dispose();
    overlayState!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: dimensionKey,
      onTap: () {
        widget.positionOnTabBar != null ? widget.updateTabIndex!(widget.positionOnTabBar ?? 0) : null;
        overlayIsVisible ? hideOverlay() : showOverlay();
      },
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? radius5.w),
        ),
        borderOnForeground: false,
        color: widget.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: EdgeInsets.only(
            left: widget.leftPadding ?? padding15,
            right: widget.rightPadding ?? padding15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  widget.leftIcon != null
                      ? Row(
                          children: [
                            CircleAvatar(
                              radius: radius10.w,
                              backgroundColor: Colors.grey,
                            ),
                            SizedBox(width: (radius5 - 1).w),
                          ],
                        )
                      : const SizedBox(),
                  Text(selectedItem, style: widget.textStyle ?? s16W600),
                ],
              ),
              Transform.rotate(
                  angle: overlayIsVisible ? 0 : math.pi, child: const Icon(Icons.keyboard_arrow_down_sharp)),
            ],
          ),
        ),
      ),
    );
  }
}
