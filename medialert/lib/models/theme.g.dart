// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetThemeCollection on Isar {
  IsarCollection<Theme> get themes => this.collection();
}

const ThemeSchema = CollectionSchema(
  name: r'Theme',
  id: 265716503294065488,
  properties: {
    r'isDark': PropertySchema(
      id: 0,
      name: r'isDark',
      type: IsarType.bool,
    )
  },
  estimateSize: _themeEstimateSize,
  serialize: _themeSerialize,
  deserialize: _themeDeserialize,
  deserializeProp: _themeDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _themeGetId,
  getLinks: _themeGetLinks,
  attach: _themeAttach,
  version: '3.1.0+1',
);

int _themeEstimateSize(
  Theme object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _themeSerialize(
  Theme object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.isDark);
}

Theme _themeDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Theme(
    isDark: reader.readBool(offsets[0]),
  );
  object.themeId = id;
  return object;
}

P _themeDeserializeProp<P>(
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

Id _themeGetId(Theme object) {
  return object.themeId;
}

List<IsarLinkBase<dynamic>> _themeGetLinks(Theme object) {
  return [];
}

void _themeAttach(IsarCollection<dynamic> col, Id id, Theme object) {
  object.themeId = id;
}

extension ThemeQueryWhereSort on QueryBuilder<Theme, Theme, QWhere> {
  QueryBuilder<Theme, Theme, QAfterWhere> anyThemeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ThemeQueryWhere on QueryBuilder<Theme, Theme, QWhereClause> {
  QueryBuilder<Theme, Theme, QAfterWhereClause> themeIdEqualTo(Id themeId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: themeId,
        upper: themeId,
      ));
    });
  }

  QueryBuilder<Theme, Theme, QAfterWhereClause> themeIdNotEqualTo(Id themeId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: themeId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: themeId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: themeId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: themeId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Theme, Theme, QAfterWhereClause> themeIdGreaterThan(Id themeId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: themeId, includeLower: include),
      );
    });
  }

  QueryBuilder<Theme, Theme, QAfterWhereClause> themeIdLessThan(Id themeId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: themeId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Theme, Theme, QAfterWhereClause> themeIdBetween(
    Id lowerThemeId,
    Id upperThemeId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerThemeId,
        includeLower: includeLower,
        upper: upperThemeId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ThemeQueryFilter on QueryBuilder<Theme, Theme, QFilterCondition> {
  QueryBuilder<Theme, Theme, QAfterFilterCondition> themeIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Theme, Theme, QAfterFilterCondition> themeIdGreaterThan(
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

  QueryBuilder<Theme, Theme, QAfterFilterCondition> themeIdLessThan(
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

  QueryBuilder<Theme, Theme, QAfterFilterCondition> themeIdBetween(
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

  QueryBuilder<Theme, Theme, QAfterFilterCondition> isDarkEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDark',
        value: value,
      ));
    });
  }
}

extension ThemeQueryObject on QueryBuilder<Theme, Theme, QFilterCondition> {}

extension ThemeQueryLinks on QueryBuilder<Theme, Theme, QFilterCondition> {}

extension ThemeQuerySortBy on QueryBuilder<Theme, Theme, QSortBy> {
  QueryBuilder<Theme, Theme, QAfterSortBy> sortByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.asc);
    });
  }

  QueryBuilder<Theme, Theme, QAfterSortBy> sortByIsDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.desc);
    });
  }
}

extension ThemeQuerySortThenBy on QueryBuilder<Theme, Theme, QSortThenBy> {
  QueryBuilder<Theme, Theme, QAfterSortBy> thenByThemeId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Theme, Theme, QAfterSortBy> thenByThemeIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Theme, Theme, QAfterSortBy> thenByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.asc);
    });
  }

  QueryBuilder<Theme, Theme, QAfterSortBy> thenByIsDarkDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDark', Sort.desc);
    });
  }
}

extension ThemeQueryWhereDistinct on QueryBuilder<Theme, Theme, QDistinct> {
  QueryBuilder<Theme, Theme, QDistinct> distinctByIsDark() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDark');
    });
  }
}

extension ThemeQueryProperty on QueryBuilder<Theme, Theme, QQueryProperty> {
  QueryBuilder<Theme, int, QQueryOperations> themeIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Theme, bool, QQueryOperations> isDarkProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDark');
    });
  }
}
