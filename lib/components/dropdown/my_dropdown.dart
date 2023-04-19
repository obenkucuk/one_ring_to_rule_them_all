import 'package:base_application/components/dropdown/animated_dropdown.dart';
import 'package:base_application/constants/size_constants.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/core/media_query_x.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';

class OverlayAnimatedDropdownX extends StatefulWidget {
  final List<String> itemsList;
  final Function(String) getSelectedValue;
  final String? title;
  final Color? backgroundColor;
  final double? borderRadius;
  final double? paddingLeft;
  final double? paddingRight;
  final TextStyle? textStyle;
  final double? dropdownWidth;
  final int? positionOnTabBar;
  final Function(int)? updateTabIndex;
  final double? itemHeight;
  final double? paddingBetween;

  const OverlayAnimatedDropdownX({
    super.key,
    this.title,
    this.backgroundColor,
    this.borderRadius,
    this.paddingLeft,
    this.textStyle,
    this.updateTabIndex,
    required this.itemsList,
    required this.getSelectedValue,
    this.dropdownWidth,
    this.positionOnTabBar,
    this.paddingRight,
    this.itemHeight,
    this.paddingBetween,
  });

  @override
  State<OverlayAnimatedDropdownX> createState() => _OverlayAnimatedDropdownXState();
}

class _OverlayAnimatedDropdownXState extends State<OverlayAnimatedDropdownX> {
  final GlobalKey dimensionKey = GlobalKey();

  late String selectedItem = widget.itemsList.first;

  bool overlayIsVisible = false;

  final layerLink = LayerLink();

  @override
  BuildContext get context => dimensionKey.currentContext!;

  late OverlayEntry? overlayEntry;
  OverlayState? overlayState;

  void showOverlay() {
    setState(() => overlayIsVisible = true);
    RenderBox renderBox = dimensionKey.currentContext!.findRenderObject() as RenderBox;
    Offset offset = renderBox.localToGlobal(Offset.zero);

    overlayEntry = OverlayEntry(builder: (context) {
      debugPrint(renderBox.size.width.toString());
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
              left: MediaQueryX.width - offset.dx > (widget.dropdownWidth ?? renderBox.size.width) ? offset.dx : null,
              right: MediaQueryX.width - offset.dx < (widget.dropdownWidth ?? renderBox.size.width) ? 0 + 20 : null,
              top: offset.dy + renderBox.size.height + 15.h,
              child: Scrollbar(
                child: SizedBox(
                  width: widget.dropdownWidth ?? renderBox.size.width,
                  height: widget.itemsList.length < 4
                      ? (widget.itemHeight ?? padding15).h * 3 * widget.itemsList.length
                      : (widget.itemHeight ?? padding15).h * 3 * 4,
                  child: AnimatedDropdown(
                    backgroundColor: widget.backgroundColor,
                    itemHeight: widget.itemHeight,
                    textStyle: widget.textStyle,
                    itemsList: widget.itemsList,
                    selectedPair: selectedItem,
                    paddingLeft: widget.paddingLeft,
                    paddingRight: widget.paddingRight,
                    borderRadius: widget.borderRadius,
                    onTap: (val) {
                      widget.getSelectedValue(val);
                      setState(() => selectedItem = val);
                      hideOverlay();
                    },
                  ),
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
  Widget build(BuildContext context) {
    return GestureDetector(
      key: dimensionKey,
      onTap: () {
        widget.positionOnTabBar != null ? widget.updateTabIndex!(widget.positionOnTabBar ?? 0) : null;
        overlayIsVisible ? hideOverlay() : showOverlay();
      },
      child: Material(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius ?? radius5),
        ),
        borderOnForeground: false,
        color: widget.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        child: Padding(
          padding: EdgeInsets.only(left: widget.paddingLeft ?? padding15, right: widget.paddingRight ?? padding15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(selectedItem, style: widget.textStyle ?? s16W600),
              SizedBox(width: widget.paddingBetween ?? padding10.w),
              RotatedBox(
                quarterTurns: overlayIsVisible ? 0 : 2,
                child: const Icon(Icons.keyboard_arrow_down_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
