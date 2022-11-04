import 'package:flutter/material.dart';

import '../overlay/my_delegate.dart';

class DropdownWidget extends StatefulWidget {
  const DropdownWidget(
      {Key? key,
      required this.link,
      required this.size,
      required this.offset,
      required this.closeOnTap,
      required this.child})
      : super(key: key);

  final Widget child;
  final VoidCallback closeOnTap;
  final LayerLink link;
  final Size size;
  final Offset offset;

  @override
  State<DropdownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState extends State<DropdownWidget> with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    prepareAnimations();
    runExpand();
  }

  void prepareAnimations() {
    animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    )..addStatusListener((status) {
        if (status == AnimationStatus.dismissed) {
          widget.closeOnTap();
        }
      });

    animation = CurvedAnimation(
      parent: animController,
      curve: Curves.linearToEaseOut,
    );
  }

  void runExpand() {
    if (displayOverly) {
      animController.forward();
    } else {
      animController.reverse();
    }
  }

  @override
  void didUpdateWidget(DropdownWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    runExpand();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  bool displayOverly = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.closeOnTap();
        setState(() => displayOverly = false);
      },
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: CompositedTransformFollower(
          showWhenUnlinked: false,
          link: widget.link,
          child: FadeTransition(
            opacity: animation,
            child: CustomSingleChildLayout(
              delegate: MyDelegate(widget.size, widget.offset),
              child: widget.child,
            ),
          ),
        ),
      ),
    );
  }
}
