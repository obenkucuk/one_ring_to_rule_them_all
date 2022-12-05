class StateStatus {
  final bool isLoading;
  final bool isLoaded;
  final bool isNoConnection;
  final bool isLowConnection;
  final bool isError;
  final String errorMessage;

  StateStatus._({
    this.isLoading = false,
    this.isLoaded = false,
    this.isNoConnection = false,
    this.isLowConnection = false,
    this.isError = false,
    this.errorMessage = "",
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
  factory StateStatus.error(String message) {
    return StateStatus._(isError: true, errorMessage: message);
  }
}
