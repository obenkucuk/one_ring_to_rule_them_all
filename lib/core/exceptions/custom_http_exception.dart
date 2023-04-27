import 'package:base_application/core/logger.dart';

class CustomHttpException implements Exception {
  final String? message;
  final int? statusCode;

  CustomHttpException({this.statusCode, this.message}) {
    Log.error(
      'Custom HTTP Exception! Status Code: $statusCode Error Message: $message',
    );
  }
}
