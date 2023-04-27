import 'dart:async';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import 'models/converstation_model.dart';
import 'models/message_model.dart';

class IsarService {
  late Future<Isar> db;
  final StreamController<IsarMessageModel> _controller = StreamController<IsarMessageModel>.broadcast();
  late Stream<IsarMessageModel> onMessageStream;

  IsarService() {
    onMessageStream = _controller.stream;

    db = openDB();
  }

  Future<void> saveMessage(IsarMessageModel newMessage, [bool isSocket = false]) async {
    final isar = await db;

    final id = isar.writeTxnSync<int>(() => isar.isarMessageModels.putSync(newMessage));
    if (isSocket) {
      _controller.sink.add(newMessage);
    }
  }

  Future<void> saveConverstation(IsarConverstationModel newConverstation, [String? to]) async {
    final isar = await db;
    if (to != null) {
      newConverstation.otherMember = to;
    }
    isar.writeTxnSync<int>(() => isar.isarConverstationModels.putSync(newConverstation));
  }

  Future<void> deleteConverstation(IsarConverstationModel newConverstation) async {
    final isar = await db;

    await isar.writeTxn(() async {
      await isar.isarConverstationModels.delete(newConverstation.id);
    });
  }

  Future<List<IsarMessageModel>> getAllMessages() async {
    final isar = await db;

    return await isar.isarMessageModels.where().findAll();
  }

  Future<List<IsarConverstationModel>> getAllConverstations() async {
    final isar = await db;
    return await isar.isarConverstationModels.where().findAll();
  }

  Future<IsarConverstationModel> getSingleConverstation(String convId) async {
    final isar = await db;
    var conv = await isar.isarConverstationModels.filter().converstationIdEqualTo(convId).findFirst() ??
        IsarConverstationModel()
      ..converstationId = convId;

    return conv;
  }

  Stream<List<IsarConverstationModel>> listenToConverstations() async* {
    final isar = await db;

    yield* isar.isarConverstationModels.where().watch(fireImmediately: true);
  }

  Future<void> cleanDb() async {
    final isar = await db;
    await isar.writeTxn(() => isar.clear());
  }

  Future<List<IsarMessageModel>> getMessagesFor(IsarConverstationModel converstation) async {
    final isar = await db;
    return await isar.isarMessageModels.filter().converstation((q) => q.idEqualTo(converstation.id)).findAll();
  }

  Future<Isar> openDB() async {
    var dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [IsarMessageModelSchema, IsarConverstationModelSchema],
        inspector: true,
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }
}
