import 'package:flutter/material.dart';

import '../dropdown/dropdown_animation.dart';

class OverlayX {
  final GlobalKey key;
  final LayerLink link;
  OverlayX({required this.key, required this.link}) {
    renderGivenBox();
  }

  renderGivenBox() {
    RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;
    _offset = renderBox.localToGlobal(Offset.zero);
    _size = renderBox.size;
  }

  Offset? _offset;
  Size? _size;

  Size get size => _size!;
  Offset get offset => _offset!;

  OverlayEntry? _overlayEntry;
  openOverlay({required BuildContext context, required Widget child, required VoidCallback closeOnTap}) {
    if (_overlayEntry != null) return;
    _overlayEntry = OverlayEntry(builder: (BuildContext context) {
      return DropdownWidget(link: link, size: size, offset: offset, closeOnTap: closeOnTap, child: child);
    });
    Overlay.of(context)!.insert(_overlayEntry!);
  }

  closeOverlay() {
    if (_overlayEntry == null) return;
    _overlayEntry!.remove();
    _overlayEntry!.dispose();
    _overlayEntry = null;
  }
}
