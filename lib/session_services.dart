import 'package:base_application/router/router.dart';
import 'package:get/get.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/storage/isar_storage/isar_service.dart';

class SessionServices extends GetxController {
  // final snackbarKey = GlobalKey<ScaffoldMessengerState>();

  final isarService = IsarService();

  final RxBool isLogin = false.obs;

  final RxString token = 'tokentoken'.obs;
}

/// NOT: App Localization
AppLocalizations? get appLocalization => AppLocalizations.of(navigatorKey.currentContext!);
