import 'package:flutter/material.dart';

class MyDelegate extends SingleChildLayoutDelegate {
  final Size anchorSize;
  final Offset offset;
  MyDelegate(this.anchorSize, this.offset);

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    // we allow our child to be smaller than parent's constraint:
    return constraints.loosen();
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // print("my size: $size");
    // print("childSize: $childSize");
    // print("anchor size being passed in: $anchorSize}");
    // where to position the child? perform calculation here:
    return Offset(0, anchorSize.height + 15);
  }

  @override
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate) => true;
}
