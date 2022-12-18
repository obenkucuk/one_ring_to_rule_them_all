class AllStocksModel {
  AllStocksModel({this.code, this.data});

  final String? code;
  final List<AllStocksDataModel>? data;

  factory AllStocksModel.fromJson(Map<String, dynamic> json) => AllStocksModel(
        code: json["code"],
        data: List<AllStocksDataModel>.from(json["data"].map((x) => AllStocksDataModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class AllStocksDataModel {
  AllStocksDataModel({this.id, this.kod, this.ad, this.tip});

  final int? id;
  final String? kod;
  final String? ad;
  final String? tip;

  factory AllStocksDataModel.fromJson(Map<String, dynamic> json) => AllStocksDataModel(
        id: json["id"],
        kod: json["kod"],
        ad: json["ad"],
        tip: json["tip"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kod": kod,
        "ad": ad,
        "tip": tip,
      };
}
