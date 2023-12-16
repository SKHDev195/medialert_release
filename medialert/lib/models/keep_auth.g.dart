// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keep_auth.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetKeepAuthCollection on Isar {
  IsarCollection<KeepAuth> get keepAuths => this.collection();
}

const KeepAuthSchema = CollectionSchema(
  name: r'KeepAuth',
  id: -7013258471624042704,
  properties: {
    r'isEnabled': PropertySchema(
      id: 0,
      name: r'isEnabled',
      type: IsarType.bool,
    )
  },
  estimateSize: _keepAuthEstimateSize,
  serialize: _keepAuthSerialize,
  deserialize: _keepAuthDeserialize,
  deserializeProp: _keepAuthDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _keepAuthGetId,
  getLinks: _keepAuthGetLinks,
  attach: _keepAuthAttach,
  version: '3.1.0+1',
);

int _keepAuthEstimateSize(
  KeepAuth object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _keepAuthSerialize(
  KeepAuth object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isEnabled);
}

KeepAuth _keepAuthDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = KeepAuth(
    isEnabled: reader.readBool(offsets[0]),
  );
  object.keepAuthId = id;
  return object;
}

P _keepAuthDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBool(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _keepAuthGetId(KeepAuth object) {
  return object.keepAuthId;
}

List<IsarLinkBase<dynamic>> _keepAuthGetLinks(KeepAuth object) {
  return [];
}

void _keepAuthAttach(IsarCollection<dynamic> col, Id id, KeepAuth object) {
  object.keepAuthId = id;
}

extension KeepAuthQueryWhereSort on QueryBuilder<KeepAuth, KeepAuth, QWhere> {
  QueryBuilder<KeepAuth, KeepAuth, QAfterWhere> anyKeepAuthId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension KeepAuthQueryWhere on QueryBuilder<KeepAuth, KeepAuth, QWhereClause> {
  QueryBuilder<KeepAuth, KeepAuth, QAfterWhereClause> keepAuthIdEqualTo(
      Id keepAuthId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: keepAuthId,
        upper: keepAuthId,
      ));
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterWhereClause> keepAuthIdNotEqualTo(
      Id keepAuthId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: keepAuthId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: keepAuthId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: keepAuthId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: keepAuthId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterWhereClause> keepAuthIdGreaterThan(
      Id keepAuthId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: keepAuthId, includeLower: include),
      );
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterWhereClause> keepAuthIdLessThan(
      Id keepAuthId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: keepAuthId, includeUpper: include),
      );
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterWhereClause> keepAuthIdBetween(
    Id lowerKeepAuthId,
    Id upperKeepAuthId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerKeepAuthId,
        includeLower: includeLower,
        upper: upperKeepAuthId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension KeepAuthQueryFilter
    on QueryBuilder<KeepAuth, KeepAuth, QFilterCondition> {
  QueryBuilder<KeepAuth, KeepAuth, QAfterFilterCondition> keepAuthIdEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterFilterCondition> keepAuthIdGreaterThan(
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

  QueryBuilder<KeepAuth, KeepAuth, QAfterFilterCondition> keepAuthIdLessThan(
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

  QueryBuilder<KeepAuth, KeepAuth, QAfterFilterCondition> keepAuthIdBetween(
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

  QueryBuilder<KeepAuth, KeepAuth, QAfterFilterCondition> isEnabledEqualTo(
      bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isEnabled',
        value: value,
      ));
    });
  }
}

extension KeepAuthQueryObject
    on QueryBuilder<KeepAuth, KeepAuth, QFilterCondition> {}

extension KeepAuthQueryLinks
    on QueryBuilder<KeepAuth, KeepAuth, QFilterCondition> {}

extension KeepAuthQuerySortBy on QueryBuilder<KeepAuth, KeepAuth, QSortBy> {
  QueryBuilder<KeepAuth, KeepAuth, QAfterSortBy> sortByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.asc);
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterSortBy> sortByIsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.desc);
    });
  }
}

extension KeepAuthQuerySortThenBy
    on QueryBuilder<KeepAuth, KeepAuth, QSortThenBy> {
  QueryBuilder<KeepAuth, KeepAuth, QAfterSortBy> thenByKeepAuthId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterSortBy> thenByKeepAuthIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterSortBy> thenByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.asc);
    });
  }

  QueryBuilder<KeepAuth, KeepAuth, QAfterSortBy> thenByIsEnabledDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isEnabled', Sort.desc);
    });
  }
}

extension KeepAuthQueryWhereDistinct
    on QueryBuilder<KeepAuth, KeepAuth, QDistinct> {
  QueryBuilder<KeepAuth, KeepAuth, QDistinct> distinctByIsEnabled() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isEnabled');
    });
  }
}

extension KeepAuthQueryProperty
    on QueryBuilder<KeepAuth, KeepAuth, QQueryProperty> {
  QueryBuilder<KeepAuth, int, QQueryOperations> keepAuthIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<KeepAuth, bool, QQueryOperations> isEnabledProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isEnabled');
    });
  }
}
