import 'package:base_application/core/models/i_base_model.dart';

class DenemeModel extends IBaseModel<DenemeModel> {
  DenemeModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  final int? page;
  final int? perPage;
  final int? total;
  final int? totalPages;
  final List<Datum>? data;
  final Support? support;

  DenemeModel copyWith({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<Datum>? data,
    Support? support,
  }) =>
      DenemeModel(
        page: page ?? this.page,
        perPage: perPage ?? this.perPage,
        total: total ?? this.total,
        totalPages: totalPages ?? this.totalPages,
        data: data ?? this.data,
        support: support ?? this.support,
      );

  @override
  Map<String, dynamic> toJson() => {
        'page': page,
        'per_page': perPage,
        'total': total,
        'total_pages': totalPages,
        'data': data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        'support': support?.toJson(),
      };

  @override
  DenemeModel fromJson(Map<String, dynamic> json) => DenemeModel(
        page: json['page'],
        perPage: json['per_page'],
        total: json['total'],
        totalPages: json['total_pages'],
        data: json['data'] == null ? [] : List<Datum>.from(json['data']!.map((x) => Datum.fromJson(x))),
        support: json['support'] == null ? null : Support.fromJson(json['support']),
      );
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.year,
    this.color,
    this.pantoneValue,
  });

  final int? id;
  final String? name;
  final int? year;
  final String? color;
  final String? pantoneValue;

  Datum copyWith({
    int? id,
    String? name,
    int? year,
    String? color,
    String? pantoneValue,
  }) =>
      Datum(
        id: id ?? this.id,
        name: name ?? this.name,
        year: year ?? this.year,
        color: color ?? this.color,
        pantoneValue: pantoneValue ?? this.pantoneValue,
      );

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'],
        name: json['name'],
        year: json['year'],
        color: json['color'],
        pantoneValue: json['pantone_value'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'year': year,
        'color': color,
        'pantone_value': pantoneValue,
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  final String? url;
  final String? text;

  Support copyWith({
    String? url,
    String? text,
  }) =>
      Support(
        url: url ?? this.url,
        text: text ?? this.text,
      );

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json['url'],
        text: json['text'],
      );

  Map<String, dynamic> toJson() => {
        'url': url,
        'text': text,
      };
}
