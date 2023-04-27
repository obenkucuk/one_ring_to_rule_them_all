import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import '../exceptions/custom_http_exception.dart';
import '../logger.dart';
import 'http_urls.dart';

// ignore_for_file: constant_identifier_names
// http metods
enum HttpMethods { GET, POST, PUT, PATCH, DELETE }

class HttpClient {
  HttpClient._();
  static final HttpClient instance = HttpClient._();

  Future<http.Response?> request({
    required HttpMethods method,
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
    Object? body,
  }) async {
    var uri = Uri(
      scheme: 'http',
      port: 3002,
      host: HttpUrls.baseUrl,
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
      if (e is SocketException) {
        throw CustomHttpException(statusCode: 999, message: 'Internet Connection Not Found!');
      } else {
        throw CustomHttpException(statusCode: 998, message: 'Şimdilik bilinmeyen hata!');
      }
    }
    if (response.statusCode != 200) {
      throw CustomHttpException(statusCode: response.statusCode, message: response.body);
    }

    return response;
  }

  Future<http.Response> _get(Uri uri, [Map<String, String>? headers]) async {
    var response = await http.get(uri, headers: headers).timeout(const Duration(seconds: 10),
        onTimeout: () => http.Response(jsonEncode({'message': 'Timed Out'}), 408));

    return response;
  }

  Future<http.Response> _post(Uri uri, [Map<String, String>? headers, Object? body]) async {
    var response = await http.post(uri, headers: headers, body: jsonEncode(body)).timeout(const Duration(seconds: 10),
        onTimeout: () => http.Response(jsonEncode({'message': 'Timed Out'}), 408));

    return response;
  }
}
