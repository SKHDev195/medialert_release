// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_remainder.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MedicationRemainderSchema = Schema(
  name: r'MedicationRemainder',
  id: 5683331268517667800,
  properties: {
    r'dosageType': PropertySchema(
      id: 0,
      name: r'dosageType',
      type: IsarType.int,
      enumMap: _MedicationRemainderdosageTypeEnumValueMap,
    ),
    r'quantity': PropertySchema(
      id: 1,
      name: r'quantity',
      type: IsarType.double,
    )
  },
  estimateSize: _medicationRemainderEstimateSize,
  serialize: _medicationRemainderSerialize,
  deserialize: _medicationRemainderDeserialize,
  deserializeProp: _medicationRemainderDeserializeProp,
);

int _medicationRemainderEstimateSize(
  MedicationRemainder object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _medicationRemainderSerialize(
  MedicationRemainder object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.dosageType?.index);
  writer.writeDouble(offsets[1], object.quantity);
}

MedicationRemainder _medicationRemainderDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedicationRemainder(
    _MedicationRemainderdosageTypeValueEnumMap[
        reader.readIntOrNull(offsets[0])],
    reader.readDoubleOrNull(offsets[1]),
  );
  return object;
}

P _medicationRemainderDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_MedicationRemainderdosageTypeValueEnumMap[
          reader.readIntOrNull(offset)]) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _MedicationRemainderdosageTypeEnumValueMap = {
  'pills': 0,
  'drops': 1,
  'teaSpoons': 2,
  'tableSpoons': 3,
  'injections': 4,
  'milligrams': 5,
  'grams': 6,
};
const _MedicationRemainderdosageTypeValueEnumMap = {
  0: DosageType.pills,
  1: DosageType.drops,
  2: DosageType.teaSpoons,
  3: DosageType.tableSpoons,
  4: DosageType.injections,
  5: DosageType.milligrams,
  6: DosageType.grams,
};

extension MedicationRemainderQueryFilter on QueryBuilder<MedicationRemainder,
    MedicationRemainder, QFilterCondition> {
  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      dosageTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dosageType',
      ));
    });
  }

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      dosageTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dosageType',
      ));
    });
  }

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      dosageTypeEqualTo(DosageType? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dosageType',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      dosageTypeGreaterThan(
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

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      dosageTypeLessThan(
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

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      dosageTypeBetween(
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

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      quantityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      quantityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quantity',
      ));
    });
  }

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      quantityEqualTo(
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

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      quantityGreaterThan(
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

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      quantityLessThan(
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

  QueryBuilder<MedicationRemainder, MedicationRemainder, QAfterFilterCondition>
      quantityBetween(
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

extension MedicationRemainderQueryObject on QueryBuilder<MedicationRemainder,
    MedicationRemainder, QFilterCondition> {}
