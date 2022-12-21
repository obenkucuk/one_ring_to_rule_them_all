import 'package:base_application/core/constants/size_constants.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';

class AnimatedDropdown extends StatefulWidget {
  const AnimatedDropdown(
      {Key? key,
      required this.itemsList,
      required this.selectedPair,
      this.onTap,
      this.textStyle,
      this.itemHeight,
      this.padding})
      : super(key: key);

  final List itemsList;
  final String selectedPair;
  final TextStyle? textStyle;
  final Function(String)? onTap;
  final double? itemHeight;
  final double? padding;

  @override
  State<AnimatedDropdown> createState() => _AnimatedDropdownState();
}

class _AnimatedDropdownState extends State<AnimatedDropdown> with SingleTickerProviderStateMixin {
  bool displayOverly = true;

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
    )..addStatusListener((status) {});

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
  void didUpdateWidget(AnimatedDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    runExpand();
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: Material(
        color: Theme.of(context).scaffoldBackgroundColor,
        elevation: 10,
        borderRadius: BorderRadius.circular(radius10.w),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: widget.padding ?? padding15),
          physics: widget.itemsList.length > 4
              ? const AlwaysScrollableScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.itemsList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                widget.onTap!(widget.itemsList[index]);
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: ((widget.itemHeight == null ? padding15 : widget.itemHeight!) * 3).h,
                      child: Text(
                        widget.itemsList[index].toString(),
                        style: widget.itemsList[index] == widget.selectedPair
                            ? widget.textStyle == null
                                ? s16W600.copyWith(color: Theme.of(context).colorScheme.primary)
                                : widget.textStyle!.copyWith(color: Theme.of(context).colorScheme.primary)
                            : widget.textStyle ?? s16W600,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  Divider(
                    thickness: index != widget.itemsList.length - 1 ? 1.h : 0,
                    color: Colors.grey,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
