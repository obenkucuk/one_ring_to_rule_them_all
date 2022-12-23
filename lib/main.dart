import 'package:base_application/core/shared_preferences_x.dart';
import 'package:base_application/router/router.dart';
import 'package:base_application/session_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'core/media_query_x.dart';
import 'theme/theme_data_dark.dart';
import 'theme/theme_data_light.dart';

void main() async {
  await SharedPreferencesX.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SessionServices());
    MediaQueryX.setScreenSize();

    return MaterialStatefull(
      child: Builder(builder: (context) {
        return MaterialApp.router(
          //     scaffoldMessengerKey: sessionServices.snackbarKey,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          title: 'One Ring to Rule Them All',
          themeMode: MaterialInherited.of(context).themeMode,
          locale: MaterialInherited.of(context).locale,
          supportedLocales: AppLocalizations.supportedLocales,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          routerConfig: appRouter,
          // routeInformationParser: appRouter.routeInformationParser,
          // routerDelegate: appRouter.routerDelegate,
        );
      }),
    );
  }
}

///
class MaterialStatefull extends StatefulWidget {
  final Widget child;
  const MaterialStatefull({super.key, required this.child});

  @override
  State<MaterialStatefull> createState() => _MaterialStatefullState();
}

class _MaterialStatefullState extends State<MaterialStatefull> {
  ThemeMode themeMode = ThemeMode.system;
  Locale locale = const Locale('tr');

  void changeTheme({required ThemeMode mode, Brightness? brightness}) {
    setState(() {
      themeMode = mode;
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarBrightness: brightness));
    });
  }

  void changeLocale() {
    setState(() {
      locale = const Locale('en');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialInherited(
      themeMode: themeMode,
      locale: locale,
      state: this,
      child: widget.child,
    );
  }
}

///
class MaterialInherited extends InheritedWidget {
  final ThemeMode themeMode;
  final Locale locale;
  final _MaterialStatefullState state;

  MaterialInherited({
    required this.locale,
    required this.state,
    required super.child,
    required this.themeMode,
  });

  static _MaterialStatefullState of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MaterialInherited>()!.state;

  @override
  bool updateShouldNotify(covariant MaterialInherited oldWidget) {
    return themeMode != oldWidget.themeMode || locale != oldWidget.locale;
  }
}
