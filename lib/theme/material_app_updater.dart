import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Material App'te değişiklik yapılmak istendiği zaman mantık burada uygulanmalı
class MaterialAppUpdater extends StatefulWidget {
  final Widget child;
  const MaterialAppUpdater({super.key, required this.child});

  @override
  State<MaterialAppUpdater> createState() => MaterialAppUpdaterState();
}

class MaterialAppUpdaterState extends State<MaterialAppUpdater> {
  ThemeMode themeMode = ThemeMode.system;
  Locale locale = const Locale('tr');

  void changeTheme({required ThemeMode mode, Brightness? brightness}) {
    setState(() {
      themeMode = mode;
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarBrightness: brightness),
      );
    });
  }

  void changeLocale() {
    setState(() {
      locale = const Locale('en');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialAppInheritedWidget(
      state: this,
      themeMode: themeMode,
      locale: locale,
      child: widget.child,
    );
  }
}

///
class MaterialAppInheritedWidget extends InheritedWidget {
  final ThemeMode themeMode;
  final Locale locale;
  final MaterialAppUpdaterState state;

  MaterialAppInheritedWidget({
    required super.child,
    required this.locale,
    required this.state,
    required this.themeMode,
  });

  static MaterialAppUpdaterState of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MaterialAppInheritedWidget>()!.state;
  }

  @override
  bool updateShouldNotify(covariant MaterialAppInheritedWidget oldWidget) {
    return themeMode != oldWidget.themeMode || locale != oldWidget.locale;
  }
}
