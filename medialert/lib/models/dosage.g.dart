// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dosage.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const DosageSchema = Schema(
  name: r'Dosage',
  id: 6337203968642665397,
  properties: {
    r'dosageType': PropertySchema(
      id: 0,
      name: r'dosageType',
      type: IsarType.int,
      enumMap: _DosagedosageTypeEnumValueMap,
    ),
    r'quantity': PropertySchema(
      id: 1,
      name: r'quantity',
      type: IsarType.double,
    )
  },
  estimateSize: _dosageEstimateSize,
  serialize: _dosageSerialize,
  deserialize: _dosageDeserialize,
  deserializeProp: _dosageDeserializeProp,
);

int _dosageEstimateSize(
  Dosage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _dosageSerialize(
  Dosage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.dosageType?.index);
  writer.writeDouble(offsets[1], object.quantity);
}

Dosage _dosageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Dosage(
    _DosagedosageTypeValueEnumMap[reader.readIntOrNull(offsets[0])],
    reader.readDoubleOrNull(offsets[1]),
  );
  return object;
}

P _dosageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_DosagedosageTypeValueEnumMap[reader.readIntOrNull(offset)]) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _DosagedosageTypeEnumValueMap = {
  'pills': 0,
  'drops': 1,
  'teaSpoons': 2,
  'tableSpoons': 3,
  'injections': 4,
  'milligrams': 5,
  'grams': 6,
};
const _DosagedosageTypeValueEnumMap = {
  0: DosageType.pills,
  1: DosageType.drops,
  2: DosageType.teaSpoons,
  3: DosageType.tableSpoons,
  4: DosageType.injections,
  5: DosageType.milligrams,
  6: DosageType.grams,
};

extension DosageQueryFilter on QueryBuilder<Dosage, Dosage, QFilterCondition> {
  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> dosageTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dosageType',
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> dosageTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dosageType',
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> dosageTypeEqualTo(
      DosageType? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosageType',
        value: value,
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> dosageTypeGreaterThan(
    DosageType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dosageType',
        value: value,
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> dosageTypeLessThan(
    DosageType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dosageType',
        value: value,
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> dosageTypeBetween(
    DosageType? lower,
    DosageType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dosageType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> quantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> quantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> quantityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> quantityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> quantityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Dosage, Dosage, QAfterFilterCondition> quantityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension DosageQueryObject on QueryBuilder<Dosage, Dosage, QFilterCondition> {}
