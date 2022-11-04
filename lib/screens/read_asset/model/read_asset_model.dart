// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class ReadAssetModel {
  String? symbol;
  String? price;

  ReadAssetModel({this.symbol, this.price});

  factory ReadAssetModel.fromRawJson(String str) => ReadAssetModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ReadAssetModel.fromJson(Map<String, dynamic> json) => ReadAssetModel(
        symbol: json["symbol"],
        price: json["price"],
      );

  Map<String, dynamic> toJson() => {
        "symbol": symbol,
        "price": price,
      };
}
