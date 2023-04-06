import 'package:base_application/constants/size_constants.dart';
import 'package:base_application/core/extensions/widget_scale.dart';
import 'package:base_application/theme/text_style.dart';
import 'package:flutter/material.dart';

class AnimatedDropdown extends StatefulWidget {
  final List itemsList;
  final String selectedPair;
  final TextStyle? textStyle;
  final Function(String)? onTap;
  final double? itemHeight;
  final double? paddingLeft;
  final double? paddingRight;
  final double? borderRadius;
  final Color? backgroundColor;

  const AnimatedDropdown({
    Key? key,
    required this.itemsList,
    required this.selectedPair,
    this.onTap,
    this.textStyle,
    this.itemHeight,
    this.paddingLeft,
    this.paddingRight,
    this.borderRadius,
    this.backgroundColor,
  }) : super(key: key);

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

  void onTap(int index) => widget.onTap!(widget.itemsList[index]);

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
        color: widget.backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
        elevation: 10,
        borderRadius: BorderRadius.circular(widget.borderRadius ?? radius10.w),
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: widget.paddingLeft ?? padding15,
            right: widget.paddingRight ?? padding15,
          ),
          physics: widget.itemsList.length > 4
              ? const AlwaysScrollableScrollPhysics()
              : const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.itemsList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => onTap(index),
              child: ColoredBox(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ((widget.itemHeight ?? padding15) * 3).h,
                      child: Align(
                        alignment: Alignment.centerLeft,
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
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => const Divider(color: Colors.amber),
        ),
      ),
    );
  }
}
