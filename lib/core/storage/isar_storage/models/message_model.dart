import 'package:isar/isar.dart';

import 'converstation_model.dart';

part 'message_model.g.dart';

@Collection()
class IsarMessageModel {
  IsarMessageModel();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? mongooseId;

  String? converstationId;

  String? type;

  String? from;
  String? to;

  String? message;

  String? replyTo;

  List<String>? deletedFrom;
  int? createdAt;

  @Backlink(to: 'messages')
  final converstation = IsarLink<IsarConverstationModel>();

  void fromJson(Map<String, dynamic> json) {
    mongooseId = json['_id'] ?? mongooseId;
    converstationId = json['converstation_id'] ?? converstationId;
    type = json['type'] ?? type;
    from = json['from'] ?? from;
    to = json['to'] ?? to;
    message = json['message'] ?? message;
    replyTo = json['reply_to'] ?? replyTo;
    deletedFrom = List<String>.from(json['deleted_from']);
    createdAt = json['created_at'] ?? createdAt;
  }
}
