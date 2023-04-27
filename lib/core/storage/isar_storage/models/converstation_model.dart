import 'package:isar/isar.dart';

import 'message_model.dart';

part 'converstation_model.g.dart';

@Collection()
class IsarConverstationModel {
  IsarConverstationModel();

  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  late String converstationId;

  String? otherMember;

  int? otherMemberLastOpenTS;

  int? lastOpenTS;

  int? unreadedMessageCount;

  int? createdAtTS;

  String? lastMessage;

  int? lastMessageTS;

  final messages = IsarLinks<IsarMessageModel>();

  void fromJson(Map<String, dynamic> json) {
    otherMember = json['other_member'] ?? otherMember;
    otherMemberLastOpenTS = json['other_member_last_open'] ?? otherMemberLastOpenTS;
    lastOpenTS = json['last_open'] ?? lastMessageTS;
    unreadedMessageCount = json['unreaded_message_count'] ?? unreadedMessageCount;
    createdAtTS = json['created_at'] ?? createdAtTS;
    converstationId = json['converstation_id'] ?? converstationId;
  }
}
