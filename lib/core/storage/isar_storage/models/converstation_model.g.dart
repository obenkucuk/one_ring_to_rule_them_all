// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unnecessary_final

part of 'converstation_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarConverstationModelCollection on Isar {
  IsarCollection<IsarConverstationModel> get isarConverstationModels => this.collection();
}

const IsarConverstationModelSchema = CollectionSchema(
  name: r'IsarConverstationModel',
  id: -4218233045938449964,
  properties: {
    r'converstationId': PropertySchema(
      id: 0,
      name: r'converstationId',
      type: IsarType.string,
    ),
    r'createdAtTS': PropertySchema(
      id: 1,
      name: r'createdAtTS',
      type: IsarType.long,
    ),
    r'lastMessage': PropertySchema(
      id: 2,
      name: r'lastMessage',
      type: IsarType.string,
    ),
    r'lastMessageTS': PropertySchema(
      id: 3,
      name: r'lastMessageTS',
      type: IsarType.long,
    ),
    r'lastOpenTS': PropertySchema(
      id: 4,
      name: r'lastOpenTS',
      type: IsarType.long,
    ),
    r'otherMember': PropertySchema(
      id: 5,
      name: r'otherMember',
      type: IsarType.string,
    ),
    r'otherMemberLastOpenTS': PropertySchema(
      id: 6,
      name: r'otherMemberLastOpenTS',
      type: IsarType.long,
    ),
    r'unreadedMessageCount': PropertySchema(
      id: 7,
      name: r'unreadedMessageCount',
      type: IsarType.long,
    )
  },
  estimateSize: _isarConverstationModelEstimateSize,
  serialize: _isarConverstationModelSerialize,
  deserialize: _isarConverstationModelDeserialize,
  deserializeProp: _isarConverstationModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'converstationId': IndexSchema(
      id: -2133122623508208434,
      name: r'converstationId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'converstationId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'messages': LinkSchema(
      id: 5515529895116362280,
      name: r'messages',
      target: r'IsarMessageModel',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _isarConverstationModelGetId,
  getLinks: _isarConverstationModelGetLinks,
  attach: _isarConverstationModelAttach,
  version: '3.1.0+1',
);

int _isarConverstationModelEstimateSize(
  IsarConverstationModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.converstationId.length * 3;
  {
    final value = object.lastMessage;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.otherMember;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarConverstationModelSerialize(
  IsarConverstationModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.converstationId);
  writer.writeLong(offsets[1], object.createdAtTS);
  writer.writeString(offsets[2], object.lastMessage);
  writer.writeLong(offsets[3], object.lastMessageTS);
  writer.writeLong(offsets[4], object.lastOpenTS);
  writer.writeString(offsets[5], object.otherMember);
  writer.writeLong(offsets[6], object.otherMemberLastOpenTS);
  writer.writeLong(offsets[7], object.unreadedMessageCount);
}

IsarConverstationModel _isarConverstationModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarConverstationModel();
  object.converstationId = reader.readString(offsets[0]);
  object.createdAtTS = reader.readLongOrNull(offsets[1]);
  object.id = id;
  object.lastMessage = reader.readStringOrNull(offsets[2]);
  object.lastMessageTS = reader.readLongOrNull(offsets[3]);
  object.lastOpenTS = reader.readLongOrNull(offsets[4]);
  object.otherMember = reader.readStringOrNull(offsets[5]);
  object.otherMemberLastOpenTS = reader.readLongOrNull(offsets[6]);
  object.unreadedMessageCount = reader.readLongOrNull(offsets[7]);
  return object;
}

P _isarConverstationModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarConverstationModelGetId(IsarConverstationModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarConverstationModelGetLinks(IsarConverstationModel object) {
  return [object.messages];
}

void _isarConverstationModelAttach(IsarCollection<dynamic> col, Id id, IsarConverstationModel object) {
  object.id = id;
  object.messages.attach(col, col.isar.collection<IsarMessageModel>(), r'messages', id);
}

extension IsarConverstationModelByIndex on IsarCollection<IsarConverstationModel> {
  Future<IsarConverstationModel?> getByConverstationId(String converstationId) {
    return getByIndex(r'converstationId', [converstationId]);
  }

  IsarConverstationModel? getByConverstationIdSync(String converstationId) {
    return getByIndexSync(r'converstationId', [converstationId]);
  }

  Future<bool> deleteByConverstationId(String converstationId) {
    return deleteByIndex(r'converstationId', [converstationId]);
  }

  bool deleteByConverstationIdSync(String converstationId) {
    return deleteByIndexSync(r'converstationId', [converstationId]);
  }

  Future<List<IsarConverstationModel?>> getAllByConverstationId(List<String> converstationIdValues) {
    final values = converstationIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'converstationId', values);
  }

  List<IsarConverstationModel?> getAllByConverstationIdSync(List<String> converstationIdValues) {
    final values = converstationIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'converstationId', values);
  }

  Future<int> deleteAllByConverstationId(List<String> converstationIdValues) {
    final values = converstationIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'converstationId', values);
  }

  int deleteAllByConverstationIdSync(List<String> converstationIdValues) {
    final values = converstationIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'converstationId', values);
  }

  Future<Id> putByConverstationId(IsarConverstationModel object) {
    return putByIndex(r'converstationId', object);
  }

  Id putByConverstationIdSync(IsarConverstationModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'converstationId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByConverstationId(List<IsarConverstationModel> objects) {
    return putAllByIndex(r'converstationId', objects);
  }

  List<Id> putAllByConverstationIdSync(List<IsarConverstationModel> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'converstationId', objects, saveLinks: saveLinks);
  }
}

extension IsarConverstationModelQueryWhereSort on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QWhere> {
  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarConverstationModelQueryWhere
    on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QWhereClause> {
  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhereClause> converstationIdEqualTo(
      String converstationId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'converstationId',
        value: [converstationId],
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterWhereClause> converstationIdNotEqualTo(
      String converstationId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'converstationId',
              lower: [],
              upper: [converstationId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'converstationId',
              lower: [converstationId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'converstationId',
              lower: [converstationId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'converstationId',
              lower: [],
              upper: [converstationId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarConverstationModelQueryFilter
    on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QFilterCondition> {
  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'converstationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'converstationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'converstationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'converstationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'converstationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'converstationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'converstationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'converstationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'converstationId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> converstationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'converstationId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> createdAtTSIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAtTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> createdAtTSIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAtTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> createdAtTSEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAtTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> createdAtTSGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAtTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> createdAtTSLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAtTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> createdAtTSBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAtTS',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastMessage',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastMessage',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastMessage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastMessage',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastMessage',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastMessage',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageTSIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastMessageTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageTSIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastMessageTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageTSEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastMessageTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageTSGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastMessageTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageTSLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastMessageTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastMessageTSBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastMessageTS',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastOpenTSIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastOpenTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastOpenTSIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastOpenTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastOpenTSEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastOpenTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastOpenTSGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastOpenTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastOpenTSLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastOpenTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> lastOpenTSBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastOpenTS',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'otherMember',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'otherMember',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otherMember',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'otherMember',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'otherMember',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'otherMember',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'otherMember',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'otherMember',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'otherMember',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'otherMember',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otherMember',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'otherMember',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberLastOpenTSIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'otherMemberLastOpenTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberLastOpenTSIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'otherMemberLastOpenTS',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberLastOpenTSEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'otherMemberLastOpenTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberLastOpenTSGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'otherMemberLastOpenTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberLastOpenTSLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'otherMemberLastOpenTS',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> otherMemberLastOpenTSBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'otherMemberLastOpenTS',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> unreadedMessageCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unreadedMessageCount',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> unreadedMessageCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unreadedMessageCount',
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> unreadedMessageCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unreadedMessageCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> unreadedMessageCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unreadedMessageCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> unreadedMessageCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unreadedMessageCount',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> unreadedMessageCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unreadedMessageCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarConverstationModelQueryObject
    on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QFilterCondition> {}

extension IsarConverstationModelQueryLinks
    on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QFilterCondition> {
  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> messages(
      FilterQuery<IsarMessageModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'messages');
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> messagesLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', length, true, length, true);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> messagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, true, 0, true);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> messagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, false, 999999, true);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> messagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', 0, true, length, include);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> messagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', length, include, 999999, true);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterFilterCondition> messagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'messages', lower, includeLower, upper, includeUpper);
    });
  }
}

extension IsarConverstationModelQuerySortBy on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QSortBy> {
  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByConverstationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByConverstationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByCreatedAtTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAtTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByCreatedAtTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAtTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByLastMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessage', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByLastMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessage', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByLastMessageTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessageTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByLastMessageTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessageTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByLastOpenTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByLastOpenTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByOtherMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMember', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByOtherMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMember', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByOtherMemberLastOpenTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMemberLastOpenTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByOtherMemberLastOpenTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMemberLastOpenTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByUnreadedMessageCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadedMessageCount', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> sortByUnreadedMessageCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadedMessageCount', Sort.desc);
    });
  }
}

extension IsarConverstationModelQuerySortThenBy
    on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QSortThenBy> {
  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByConverstationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByConverstationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByCreatedAtTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAtTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByCreatedAtTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAtTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByLastMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessage', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByLastMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessage', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByLastMessageTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessageTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByLastMessageTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastMessageTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByLastOpenTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByLastOpenTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastOpenTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByOtherMember() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMember', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByOtherMemberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMember', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByOtherMemberLastOpenTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMemberLastOpenTS', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByOtherMemberLastOpenTSDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'otherMemberLastOpenTS', Sort.desc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByUnreadedMessageCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadedMessageCount', Sort.asc);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QAfterSortBy> thenByUnreadedMessageCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unreadedMessageCount', Sort.desc);
    });
  }
}

extension IsarConverstationModelQueryWhereDistinct
    on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> {
  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByConverstationId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'converstationId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByCreatedAtTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAtTS');
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByLastMessage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastMessage', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByLastMessageTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastMessageTS');
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByLastOpenTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastOpenTS');
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByOtherMember(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'otherMember', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByOtherMemberLastOpenTS() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'otherMemberLastOpenTS');
    });
  }

  QueryBuilder<IsarConverstationModel, IsarConverstationModel, QDistinct> distinctByUnreadedMessageCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unreadedMessageCount');
    });
  }
}

extension IsarConverstationModelQueryProperty
    on QueryBuilder<IsarConverstationModel, IsarConverstationModel, QQueryProperty> {
  QueryBuilder<IsarConverstationModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarConverstationModel, String, QQueryOperations> converstationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'converstationId');
    });
  }

  QueryBuilder<IsarConverstationModel, int?, QQueryOperations> createdAtTSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAtTS');
    });
  }

  QueryBuilder<IsarConverstationModel, String?, QQueryOperations> lastMessageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastMessage');
    });
  }

  QueryBuilder<IsarConverstationModel, int?, QQueryOperations> lastMessageTSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastMessageTS');
    });
  }

  QueryBuilder<IsarConverstationModel, int?, QQueryOperations> lastOpenTSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastOpenTS');
    });
  }

  QueryBuilder<IsarConverstationModel, String?, QQueryOperations> otherMemberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'otherMember');
    });
  }

  QueryBuilder<IsarConverstationModel, int?, QQueryOperations> otherMemberLastOpenTSProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'otherMemberLastOpenTS');
    });
  }

  QueryBuilder<IsarConverstationModel, int?, QQueryOperations> unreadedMessageCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unreadedMessageCount');
    });
  }
}
