// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: unnecessary_final

part of 'message_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarMessageModelCollection on Isar {
  IsarCollection<IsarMessageModel> get isarMessageModels => this.collection();
}

const IsarMessageModelSchema = CollectionSchema(
  name: r'IsarMessageModel',
  id: -5391664731972567523,
  properties: {
    r'converstationId': PropertySchema(
      id: 0,
      name: r'converstationId',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.long,
    ),
    r'deletedFrom': PropertySchema(
      id: 2,
      name: r'deletedFrom',
      type: IsarType.stringList,
    ),
    r'from': PropertySchema(
      id: 3,
      name: r'from',
      type: IsarType.string,
    ),
    r'message': PropertySchema(
      id: 4,
      name: r'message',
      type: IsarType.string,
    ),
    r'mongooseId': PropertySchema(
      id: 5,
      name: r'mongooseId',
      type: IsarType.string,
    ),
    r'replyTo': PropertySchema(
      id: 6,
      name: r'replyTo',
      type: IsarType.string,
    ),
    r'to': PropertySchema(
      id: 7,
      name: r'to',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 8,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _isarMessageModelEstimateSize,
  serialize: _isarMessageModelSerialize,
  deserialize: _isarMessageModelDeserialize,
  deserializeProp: _isarMessageModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'mongooseId': IndexSchema(
      id: 8961804421058876484,
      name: r'mongooseId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'mongooseId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'converstation': LinkSchema(
      id: -1749907511911495969,
      name: r'converstation',
      target: r'IsarConverstationModel',
      single: true,
      linkName: r'messages',
    )
  },
  embeddedSchemas: {},
  getId: _isarMessageModelGetId,
  getLinks: _isarMessageModelGetLinks,
  attach: _isarMessageModelAttach,
  version: '3.1.0+1',
);

int _isarMessageModelEstimateSize(
  IsarMessageModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.converstationId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.deletedFrom;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.from;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.message;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.mongooseId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.replyTo;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.to;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarMessageModelSerialize(
  IsarMessageModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.converstationId);
  writer.writeLong(offsets[1], object.createdAt);
  writer.writeStringList(offsets[2], object.deletedFrom);
  writer.writeString(offsets[3], object.from);
  writer.writeString(offsets[4], object.message);
  writer.writeString(offsets[5], object.mongooseId);
  writer.writeString(offsets[6], object.replyTo);
  writer.writeString(offsets[7], object.to);
  writer.writeString(offsets[8], object.type);
}

IsarMessageModel _isarMessageModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarMessageModel();
  object.converstationId = reader.readStringOrNull(offsets[0]);
  object.createdAt = reader.readLongOrNull(offsets[1]);
  object.deletedFrom = reader.readStringList(offsets[2]);
  object.from = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.message = reader.readStringOrNull(offsets[4]);
  object.mongooseId = reader.readStringOrNull(offsets[5]);
  object.replyTo = reader.readStringOrNull(offsets[6]);
  object.to = reader.readStringOrNull(offsets[7]);
  object.type = reader.readStringOrNull(offsets[8]);
  return object;
}

P _isarMessageModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarMessageModelGetId(IsarMessageModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _isarMessageModelGetLinks(IsarMessageModel object) {
  return [object.converstation];
}

void _isarMessageModelAttach(IsarCollection<dynamic> col, Id id, IsarMessageModel object) {
  object.id = id;
  object.converstation.attach(col, col.isar.collection<IsarConverstationModel>(), r'converstation', id);
}

extension IsarMessageModelByIndex on IsarCollection<IsarMessageModel> {
  Future<IsarMessageModel?> getByMongooseId(String? mongooseId) {
    return getByIndex(r'mongooseId', [mongooseId]);
  }

  IsarMessageModel? getByMongooseIdSync(String? mongooseId) {
    return getByIndexSync(r'mongooseId', [mongooseId]);
  }

  Future<bool> deleteByMongooseId(String? mongooseId) {
    return deleteByIndex(r'mongooseId', [mongooseId]);
  }

  bool deleteByMongooseIdSync(String? mongooseId) {
    return deleteByIndexSync(r'mongooseId', [mongooseId]);
  }

  Future<List<IsarMessageModel?>> getAllByMongooseId(List<String?> mongooseIdValues) {
    final values = mongooseIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'mongooseId', values);
  }

  List<IsarMessageModel?> getAllByMongooseIdSync(List<String?> mongooseIdValues) {
    final values = mongooseIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'mongooseId', values);
  }

  Future<int> deleteAllByMongooseId(List<String?> mongooseIdValues) {
    final values = mongooseIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'mongooseId', values);
  }

  int deleteAllByMongooseIdSync(List<String?> mongooseIdValues) {
    final values = mongooseIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'mongooseId', values);
  }

  Future<Id> putByMongooseId(IsarMessageModel object) {
    return putByIndex(r'mongooseId', object);
  }

  Id putByMongooseIdSync(IsarMessageModel object, {bool saveLinks = true}) {
    return putByIndexSync(r'mongooseId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByMongooseId(List<IsarMessageModel> objects) {
    return putAllByIndex(r'mongooseId', objects);
  }

  List<Id> putAllByMongooseIdSync(List<IsarMessageModel> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'mongooseId', objects, saveLinks: saveLinks);
  }
}

extension IsarMessageModelQueryWhereSort on QueryBuilder<IsarMessageModel, IsarMessageModel, QWhere> {
  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarMessageModelQueryWhere on QueryBuilder<IsarMessageModel, IsarMessageModel, QWhereClause> {
  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> idBetween(
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> mongooseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mongooseId',
        value: [null],
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> mongooseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'mongooseId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> mongooseIdEqualTo(String? mongooseId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'mongooseId',
        value: [mongooseId],
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterWhereClause> mongooseIdNotEqualTo(String? mongooseId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mongooseId',
              lower: [],
              upper: [mongooseId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mongooseId',
              lower: [mongooseId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mongooseId',
              lower: [mongooseId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'mongooseId',
              lower: [],
              upper: [mongooseId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension IsarMessageModelQueryFilter on QueryBuilder<IsarMessageModel, IsarMessageModel, QFilterCondition> {
  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'converstationId',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'converstationId',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdEqualTo(
    String? value, {
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdGreaterThan(
    String? value, {
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdLessThan(
    String? value, {
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdStartsWith(
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdEndsWith(
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'converstationId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'converstationId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'converstationId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'converstationId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> createdAtEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> createdAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> createdAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> createdAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'deletedFrom',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'deletedFrom',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deletedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deletedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deletedFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deletedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deletedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deletedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deletedFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deletedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deletedFrom',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deletedFrom',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deletedFrom',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deletedFrom',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deletedFrom',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> deletedFromLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'deletedFrom',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'from',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'from',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'from',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'from',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'from',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'from',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> fromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'from',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'message',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'message',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'message',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'message',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'message',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> messageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'message',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mongooseId',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mongooseId',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mongooseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mongooseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mongooseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mongooseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mongooseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mongooseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mongooseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mongooseId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mongooseId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> mongooseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mongooseId',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'replyTo',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'replyTo',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'replyTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'replyTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'replyTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'replyTo',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'replyTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'replyTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'replyTo',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'replyTo',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'replyTo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> replyToIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'replyTo',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'to',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'to',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'to',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'to',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'to',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'to',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'to',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'to',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'to',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'to',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'to',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> toIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'to',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension IsarMessageModelQueryObject on QueryBuilder<IsarMessageModel, IsarMessageModel, QFilterCondition> {}

extension IsarMessageModelQueryLinks on QueryBuilder<IsarMessageModel, IsarMessageModel, QFilterCondition> {
  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstation(
      FilterQuery<IsarConverstationModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'converstation');
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterFilterCondition> converstationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'converstation', 0, true, 0, true);
    });
  }
}

extension IsarMessageModelQuerySortBy on QueryBuilder<IsarMessageModel, IsarMessageModel, QSortBy> {
  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByConverstationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByConverstationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByMongooseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mongooseId', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByMongooseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mongooseId', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByReplyTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyTo', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByReplyToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyTo', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension IsarMessageModelQuerySortThenBy on QueryBuilder<IsarMessageModel, IsarMessageModel, QSortThenBy> {
  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByConverstationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByConverstationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'converstationId', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'from', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByMessage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByMessageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'message', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByMongooseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mongooseId', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByMongooseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mongooseId', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByReplyTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyTo', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByReplyToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'replyTo', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByTo() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByToDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'to', Sort.desc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension IsarMessageModelQueryWhereDistinct on QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> {
  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByConverstationId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'converstationId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByDeletedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedFrom');
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'from', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByMessage({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'message', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByMongooseId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mongooseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByReplyTo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'replyTo', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByTo({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'to', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<IsarMessageModel, IsarMessageModel, QDistinct> distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension IsarMessageModelQueryProperty on QueryBuilder<IsarMessageModel, IsarMessageModel, QQueryProperty> {
  QueryBuilder<IsarMessageModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarMessageModel, String?, QQueryOperations> converstationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'converstationId');
    });
  }

  QueryBuilder<IsarMessageModel, int?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<IsarMessageModel, List<String>?, QQueryOperations> deletedFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedFrom');
    });
  }

  QueryBuilder<IsarMessageModel, String?, QQueryOperations> fromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'from');
    });
  }

  QueryBuilder<IsarMessageModel, String?, QQueryOperations> messageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'message');
    });
  }

  QueryBuilder<IsarMessageModel, String?, QQueryOperations> mongooseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mongooseId');
    });
  }

  QueryBuilder<IsarMessageModel, String?, QQueryOperations> replyToProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'replyTo');
    });
  }

  QueryBuilder<IsarMessageModel, String?, QQueryOperations> toProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'to');
    });
  }

  QueryBuilder<IsarMessageModel, String?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}
