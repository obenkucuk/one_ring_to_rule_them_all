import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin AppStateMixin on GetxController {
  final Rx<StateStatus> _status = StateStatus.loading().obs;

  changeStateStatus(StateStatus status) {
    _status.value = status;
  }

// TODO bunu taşı
  Future<bool> checkInternetConnection() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  @override
  void onClose() {
    super.onClose();
  }

  Widget buildStatus({
    Widget? onLoading,
    Widget? onLoaded,
    Widget? onLowConnection,
    Widget? onNoConnection,
    Widget Function(String? error)? onError,
  }) {
    // TODO defoult lar düzenlenecek
    if (_status.value.isLoading) {
      return onLoading ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (_status.value.isLoaded) {
      return onLoaded ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (_status.value.isLowConnection) {
      return onLowConnection ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (_status.value.isNoConnection) {
      return onNoConnection ?? const Center(child: Text("No Connection"));
    } else {
      return onError!(_status.value.errorMessage);
    }
  }
}

class StateStatus {
  final bool isLoading;
  final bool isLoaded;
  final bool isNoConnection;
  final bool isLowConnection;
  final bool isError;
  final String? errorMessage;

  StateStatus._({
    this.isLoading = false,
    this.isLoaded = false,
    this.isNoConnection = false,
    this.isLowConnection = false,
    this.isError = false,
    this.errorMessage,
  });

  factory StateStatus.loading() {
    return StateStatus._(isLoading: true);
  }
  factory StateStatus.loaded() {
    return StateStatus._(isLoaded: true);
  }
  factory StateStatus.noConnection() {
    return StateStatus._(isNoConnection: true);
  }
  factory StateStatus.lowConnection() {
    return StateStatus._(isLowConnection: true);
  }
  factory StateStatus.error([String? message]) {
    return StateStatus._(isError: true, errorMessage: message);
  }
}
