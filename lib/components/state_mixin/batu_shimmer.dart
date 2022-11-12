import 'dart:async';
import 'dart:developer';

import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BatuShimmer extends StatefulWidget {
  final Duration duration;
  final int depth;
  int? maxLine;
  double? textSize;
  double? borderRadius;

  BatuShimmer(
      {super.key,
      this.depth = 10,
      this.duration = const Duration(seconds: 1),
      this.borderRadius = 10});

  BatuShimmer.text(
      {super.key,
      this.depth = 5,
      this.duration = const Duration(seconds: 1),
      this.maxLine = 3,
      this.textSize = 14,
      this.borderRadius = 10});

  @override
  State<BatuShimmer> createState() => _BatuShimmerState();
}

class _BatuShimmerState extends State<BatuShimmer> {
  late Timer _timer;

  Duration _duration = const Duration(microseconds: 1);
  int _colorInt = 5;
  var _brightness = Get.find<SettingsController>().themeMode;
  bool _isStart = true;

  @override
  void initState() {
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
    final Color _bgColor = Theme.of(context).scaffoldBackgroundColor;
    final Color _sizeWcolor = Color.fromARGB(
        _bgColor.alpha,
        _bgColor.red + _colorInt,
        _bgColor.green + _colorInt,
        _bgColor.blue + _colorInt);
    final Color _textWColor = Color.fromARGB(_bgColor.alpha, _bgColor.red + 5,
        _bgColor.green + 5, _bgColor.blue + 5);
    final Color _textWColorText = Color.fromARGB(
        _bgColor.alpha,
        _bgColor.red + _colorInt + 10,
        _bgColor.green + _colorInt + 10,
        _bgColor.blue + _colorInt + 10);

    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: widget.maxLine == null ? _sizeWcolor : _textWColor,
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
                  (index) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: _textWColorText,
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
