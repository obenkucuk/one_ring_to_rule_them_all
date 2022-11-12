import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/keys.dart';

class BatuShimmer extends StatefulWidget {
  final Duration duration;
  final int depth;
  int? maxLine;
  double? textSize;
  double? borderRadius;

  BatuShimmer({
    super.key,
    required this.depth,
    required this.duration,
    required this.borderRadius,
  });

  BatuShimmer.text({
    super.key,
    required this.depth,
    required this.duration,
    required this.maxLine,
    required this.textSize,
    required this.borderRadius,
  });

  @override
  State<BatuShimmer> createState() => _BatuShimmerState();
}

class _BatuShimmerState extends State<BatuShimmer> {
  late Timer _timer;

  int _colorInt = 5;
  final Brightness _brightness = Theme.of(appKey.currentContext!).brightness;
  bool _isStart = true;

  @override
  void initState() {
    _colorInt = _brightness == Brightness.dark
        ? 5
        : (_brightness == Brightness.light
            ? -50
            : (_brightness == Brightness.dark ? 5 : -50));
    onReady();
    log('\x1B[32m{BatuShimmer initialized}\x1B[0m');

    super.initState();
  }

  onReady() async {
    await Future.delayed(const Duration(microseconds: 1));
    setState(() {
      if (_isStart) {
        _colorInt = _colorInt + widget.depth;
      } else {
        _colorInt = _colorInt - widget.depth;
      }
    });
    _timer = Timer.periodic(widget.duration, (timer) {
      setState(() {
        if (_isStart) {
          _colorInt = _colorInt - widget.depth;
        } else {
          _colorInt = _colorInt + widget.depth;
        }
        _isStart = !_isStart;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();

    if (_timer.isActive) {
      _timer.cancel();
    }
    log('\x1B[32m{BatuShimmer deleted}\x1B[0m');
  }

  @override
  Widget build(BuildContext context) {
    final Color bgColor = Theme.of(context).scaffoldBackgroundColor;
    final Color sizeWcolor = Color.fromARGB(
        bgColor.alpha,
        bgColor.red + _colorInt,
        bgColor.green + _colorInt,
        bgColor.blue + _colorInt);
    int textWDepth = _brightness == Brightness.dark ? 10 : -10;
    final Color textWColor = Color.fromARGB(
        bgColor.alpha,
        bgColor.red + textWDepth,
        bgColor.green + textWDepth,
        bgColor.blue + textWDepth);
    final Color textWColorText = Color.fromARGB(
        bgColor.alpha,
        bgColor.red + _colorInt + 10,
        bgColor.green + _colorInt + 10,
        bgColor.blue + _colorInt + 10);

    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.maxLine == null ? sizeWcolor : textWColor,
      ),
      duration: widget.duration,
      height: widget.maxLine == null
          ? context.height
          : (widget.maxLine! * (widget.textSize! + 10) + 10),
      //TODO -20 değeri uygulamanın paddingi olacak
      width: context.width - 20,

      child: widget.maxLine == null
          ? null
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                  widget.maxLine!,
                  (index) => AnimatedContainer(
                        duration: widget.duration,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: textWColorText,
                        ),
                        margin: const EdgeInsets.only(
                            right: 10, left: 10, bottom: 5, top: 5),
                        height: 14,
                        width: (widget.maxLine! - 1) == index
                            ? context.width / 3
                            : null,
                      ))
                ..insert(
                    0,
                    const SizedBox(
                      height: 5,
                    ))
                ..add(const SizedBox(
                  height: 5,
                )),
            ),
    );
  }
}
