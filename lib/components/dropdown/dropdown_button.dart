import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../overlay/overlay.dart';

part "dropdown_list.dart";

class MyDropdownWidget extends StatefulWidget {
  final List<String> itemsList;
  final double? dropdownHeight;
  final double? dropdownWidth;
  final Function(dynamic) getSelectedValue;
  const MyDropdownWidget({
    super.key,
    this.dropdownHeight,
    this.dropdownWidth,
    required this.itemsList,
    required this.getSelectedValue,
  });

  @override
  State<MyDropdownWidget> createState() => _MyDropdownWidgetState();
}

class _MyDropdownWidgetState extends State<MyDropdownWidget> {
  GlobalKey dimensionKey = GlobalKey();

  late OverlayX overlayInstance;

  late String selectedItem = widget.itemsList.first;

  bool overlayIsOpen = false;

  final layerLink = LayerLink();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      overlayInstance = OverlayX(key: dimensionKey, link: layerLink);
    });
  }

  _showDropdown() {
    setState(() => overlayIsOpen = true);
    overlayInstance.openOverlay(
      context: context,
      child: _DropdownList(
        width: overlayInstance.size.width,
        itemsList: widget.itemsList,
        selectedPair: selectedItem,
        onTap: (val) {
          _hideDropdown();
          widget.getSelectedValue(val);
          setState(() => selectedItem = val);
        },
      ),
      closeOnTap: _openAndCloseDropdown,
    );
  }

  _hideDropdown() {
    setState(() => overlayIsOpen = false);
    overlayInstance.closeOverlay();
  }

  _openAndCloseDropdown() {
    !overlayIsOpen ? _showDropdown() : _hideDropdown();
  }

  @override
  void dispose() {
    super.dispose();
    overlayInstance.closeOverlay();
  }

  FocusNode focusNode = FocusNode();
  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _openAndCloseDropdown(),
      child: CompositedTransformTarget(
        link: layerLink,
        key: dimensionKey,
        child: Material(
          borderRadius: BorderRadius.circular(16),
          elevation: overlayIsOpen ? 10 : 0,
          borderOnForeground: false,
          child: Column(
            children: [
              Container(
                height: 46,
                width: widget.dropdownWidth ?? 200,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      selectedItem,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    Transform.rotate(
                      angle: overlayIsOpen ? math.pi : 0,
                      child: const Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
