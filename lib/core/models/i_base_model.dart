import 'dart:convert';
import 'dart:isolate';

import 'package:flutter/material.dart';

import '../exceptions/custom_http_exception.dart';

@immutable
abstract class IBaseModel<T> {
  IBaseModel();

  Map<String, dynamic> toJson();

  T fromJson(Map<String, dynamic> json);

  Future<T> fromString(String body) async {
    var json = await Isolate.run(() async => await jsonDecode(body));

    try {
      return fromJson(json);
    } catch (e) {
      throw Exception('This function must be used with string that can be converted to Map<String,dynamic>');
    }
  }

  Future<List<T>> fromListString(String body) async {
    var json = await Isolate.run(() async => await jsonDecode(body));

    try {
      return (json as List).map((e) => fromJson(e)).toList();
    } catch (e) {
      throw Exception('This function must be used with string that can be converted to List<dynamic>');
    }
  }
}

class BaseHttpModel<T> {
  T? data;
  CustomHttpException? error;
  int status;

  BaseHttpModel({
    required this.status,
    this.error,
    this.data,
  });
}
