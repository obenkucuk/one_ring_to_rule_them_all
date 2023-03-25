import 'dart:convert';
import 'package:http/http.dart' as http;

import '../logger.dart';

abstract class IBaseModel<T> {
  IBaseModel();

  Map<String, dynamic> toJson();

  T fromJson(Map<String, dynamic> json);
}

class BaseHttpRequest<T> {
  int status;
  T? data;
  String? errorMessage;

  BaseHttpRequest({
    required this.status,
    this.data,
    this.errorMessage,
  });
}

class HttpClient {
  HttpClient._();
  static final HttpClient instance = HttpClient._();

  Future<http.Response?> request({
    required HttpMethods method,
    String baseUrl = HttpUrls.baseUrl,
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Object? body,
  }) async {
    var uri = Uri(
      scheme: 'http',
      port: 3002,
      host: baseUrl,
      path: path,
      queryParameters: queryParameters,
    );

    http.Response? response;

    try {
      switch (method) {
        case HttpMethods.GET:
          response = await _get(uri, headers);
          break;
        case HttpMethods.POST:
          response = await _post(uri, headers, body);
          break;
        case HttpMethods.PUT:

          /// TODO: doğrusunu yap
          response = await _get(uri, headers);
          break;
        case HttpMethods.PATCH:

          /// TODO: doğrusunu yap
          response = await _get(uri, headers);
          break;
        case HttpMethods.DELETE:

          /// TODO: doğrusunu yap
          response = await _get(uri, headers);
          break;
      }
    } catch (e, s) {
      Log.error('$e\nUrl: $uri\nMethod: $method \n sTack: $s');
      rethrow;
    }

    return response;
  }

  Future<http.Response> _get(Uri uri, [Map<String, String>? headers]) async {
    var response = await http.get(uri, headers: headers);
    return response;
  }

  Future<http.Response> _post(Uri uri,
      [Map<String, String>? headers, Object? body]) async {
    var response =
        await http.post(uri, headers: headers, body: jsonEncode(body));
    return response;
  }
}

// ignore_for_file: constant_identifier_names
enum HttpMethods { GET, POST, PUT, PATCH, DELETE }

class HttpUrls {
  static const String baseUrl = 'localhost';

  static const String unknown = 'api/unknown';
  static const String register = 'auth/register';
}

/// TODO: kaderlerini tayin edin!
class NoInternetException {
  final String message;
  final int statusCode;
  NoInternetException(this.message, this.statusCode);
}

/// Status Exception
class HttpNotOkException implements Exception {
  final String? message;
  final int? statusCode;
  HttpNotOkException({this.message, this.statusCode});
}
