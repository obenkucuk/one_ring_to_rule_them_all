import 'package:base_application/core/network_services/check_network_connection.dart';
import 'package:base_application/pages/main_screen/settings_screen/controller/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class IAppException implements Exception {}

class NoInternetException implements Exception {
  int checkCount = 0;
  NoInternetException() {
    final settings = Get.find<SettingsController>();

    if (!settings.isNetworkChecking.value) {
      Get.find<SettingsController>().snackbarKey.currentState!.showSnackBar(
            snackBar(color: Colors.redAccent, text: settings.lang.value.noNetworkMessage),
          );
    }

    noInternetLoop() async {
      settings.isNetworkChecking.value = true;

      await for (var _ in Stream.periodic(const Duration(seconds: 3))) {
        final isConnectedNetwork = await checkInternetConnection();

        if (isConnectedNetwork) {
          Get.find<SettingsController>().snackbarKey.currentState!.showSnackBar(
                snackBar(color: Colors.greenAccent, text: settings.lang.value.connectedMessage),
              );
          settings.isNetworkChecking.value = false;
          break;
        } else if (checkCount > 20) {
          settings.isNetworkChecking.value = false;
          break;
        }
        checkCount++;
      }
    }

    if (!settings.isNetworkChecking.value) {
      noInternetLoop();
    }
  }
}

/// Status Exception
class StatusException implements IAppException {
  final String? statusMessage;
  StatusException({this.statusMessage}) {
    debugPrint("StatusException: $statusMessage");
  }
}

SnackBar snackBar({Color? color, String? text}) => SnackBar(
      duration: const Duration(seconds: 5),
      backgroundColor: color ?? Colors.indigo,
      content: Text(
        text ?? "Snackbar yazısı verilmedi!",
        textAlign: TextAlign.center,
      ),
    );
