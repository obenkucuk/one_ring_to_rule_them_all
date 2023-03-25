import 'dart:convert';
import 'dart:io';
import 'deneme_model.dart';
import 'i_base_model.dart';

class Repository extends Header {
  Repository._();
  static final Repository instance = Repository._();

  Future<BaseHttpRequest<DenemeModel>> denemeIstek(Object? body) async {
    try {
      var response = await HttpClient.instance.request(
          method: HttpMethods.POST,
          path: HttpUrls.register,
          body: body,
          headers: createHeader());

      if (response!.statusCode == HttpStatus.ok) {
        DenemeModel model = DenemeModel().fromJson(jsonDecode(response.body));
        return BaseHttpRequest(status: response.statusCode, data: model);
      } else {
        HttpNotOkModel model =
            HttpNotOkModel().fromJson(jsonDecode(response.body));

        return BaseHttpRequest(
            status: response.statusCode, errorMessage: model.errorMessage);
      }
    } catch (e, s) {
      /// TODO: burayı halledin:
      return BaseHttpRequest(
          status: 20000, errorMessage: 'Repository Catch Block');
    }
  }
}

// TODO(obenkucuk) buraya token al
class Header {
  final String? token;

  Header({this.token});

  Map<String, String> createHeader({Map<String, String> addHeader = const {}}) {
    /// TODO(obenkucuk) Accept-Language localden alıncak!

    Map<String, String> header = {
      'Content-type': 'application/json',
      'Authorization': 'Bearer $token',
      'Accept-Language': '*',
      ...addHeader,
    };

    return header;
  }
}

class HttpNotOkModel {
  final String? errorMessage;

  HttpNotOkModel({this.errorMessage});

  HttpNotOkModel fromJson(Map<String, dynamic> json) => HttpNotOkModel(
        errorMessage: json['error'],
      );

  Map<String, dynamic> toJson() => {
        'error': errorMessage,
      };
}
