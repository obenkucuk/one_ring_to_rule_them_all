import 'package:base_application/constants/app_constants.dart';
import 'package:base_application/core/shared_preferences_x.dart';
import 'package:base_application/router/router.dart';
import 'package:base_application/session_services.dart';
import 'package:base_application/theme/material_app_updater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';
import 'theme/theme_data_dark.dart';
import 'theme/theme_data_light.dart';

void main() async {
  await SharedPreferencesX.init();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => SessionServices());

    return MaterialAppUpdater(
      child: Builder(
        builder: (context) {
          return MaterialApp.router(
            //  scaffoldMessengerKey: Get.find<SessionServices>().snackbarKey,

            debugShowCheckedModeBanner: false,
            theme: lightTheme,
            darkTheme: darkTheme,
            title: AppConstants.appName,
            themeMode: MaterialAppInheritedWidget.of(context).themeMode,
            locale: MaterialAppInheritedWidget.of(context).locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            routerConfig: appRouter,
            // routeInformationParser: appRouter.routeInformationParser,
            // routerDelegate: appRouter.routerDelegate,
          );
        },
      ),
    );
  }
}
