import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin AppStateMixin on GetxController {
  final Rx<StateStatus> _status = StateStatus.loading().obs;

  StateStatus get status => _status.value;
  set status(StateStatus status) {
    _status.value = status;
  }

  Widget buildStatus({
    Widget? onLoading,
    Widget? onLoaded,
    Widget? onLowConnection,
    Widget? onNoConnection,
    Widget Function(String? error)? onError,
  }) {
    // NOT: defoult lar düzenlenecek

    if (status.isLoading) {
      return onLoading ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (status.isLoaded) {
      return onLoaded ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (status.isLowConnection) {
      return onLowConnection ??
          const Center(
            child: CircularProgressIndicator.adaptive(),
          );
    } else if (status.isNoConnection) {
      return onNoConnection ?? const Center(child: Text("No Connection"));
    } else {
      return onError!(status.errorMessage);
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
