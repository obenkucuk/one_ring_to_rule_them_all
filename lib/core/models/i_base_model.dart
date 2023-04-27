import '../exceptions/custom_http_exception.dart';

abstract class IBaseModel<T> {
  IBaseModel();

  Map<String, dynamic> toJson();

  T fromJson(Map<String, dynamic> json);
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
