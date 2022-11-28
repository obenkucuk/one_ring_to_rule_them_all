import 'package:flutter/material.dart';

class Confirmationwidget extends StatelessWidget {
  final String? title;
  final Widget? widget;
  const Confirmationwidget({
    super.key,
    this.title,
    this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            AppBar(
              backgroundColor: Theme.of(context).colorScheme.primaryContainer,
              title: Text(title!),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: widget ?? const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
