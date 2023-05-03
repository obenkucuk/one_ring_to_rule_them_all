import 'package:base_application/core/models/i_base_model.dart';

class JsonPlaceHolderPosts extends IBaseModel<JsonPlaceHolderPosts> {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  JsonPlaceHolderPosts({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  JsonPlaceHolderPosts copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      JsonPlaceHolderPosts(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  @override
  JsonPlaceHolderPosts fromJson(Map<String, dynamic> json) => JsonPlaceHolderPosts(
        userId: json['userId'],
        id: json['id'],
        title: json['title'],
        body: json['body'],
      );

  @override
  Map<String, dynamic> toJson() => {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      };
}
