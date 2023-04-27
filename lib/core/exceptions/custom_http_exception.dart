class CustomHttpException implements Exception {
  final String? message;
  final int? statusCode;

  CustomHttpException({this.statusCode, this.message});
}
