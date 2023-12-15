// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ScheduleSchema = Schema(
  name: r'Schedule',
  id: 6369058706800408146,
  properties: {
    r'durationType': PropertySchema(
      id: 0,
      name: r'durationType',
      type: IsarType.int,
      enumMap: _ScheduledurationTypeEnumValueMap,
    ),
    r'regularity': PropertySchema(
      id: 1,
      name: r'regularity',
      type: IsarType.double,
    )
  },
  estimateSize: _scheduleEstimateSize,
  serialize: _scheduleSerialize,
  deserialize: _scheduleDeserialize,
  deserializeProp: _scheduleDeserializeProp,
);

int _scheduleEstimateSize(
  Schedule object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _scheduleSerialize(
  Schedule object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeInt(offsets[0], object.durationType?.index);
  writer.writeDouble(offsets[1], object.regularity);
}

Schedule _scheduleDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Schedule(
    _ScheduledurationTypeValueEnumMap[reader.readIntOrNull(offsets[0])],
    reader.readDoubleOrNull(offsets[1]),
  );
  return object;
}

P _scheduleDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_ScheduledurationTypeValueEnumMap[reader.readIntOrNull(offset)])
          as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ScheduledurationTypeEnumValueMap = {
  'minute': 0,
  'hour': 1,
  'day': 2,
  'week': 3,
  'month': 4,
};
const _ScheduledurationTypeValueEnumMap = {
  0: DurationType.minute,
  1: DurationType.hour,
  2: DurationType.day,
  3: DurationType.week,
  4: DurationType.month,
};

extension ScheduleQueryFilter
    on QueryBuilder<Schedule, Schedule, QFilterCondition> {
  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> durationTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'durationType',
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition>
      durationTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'durationType',
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> durationTypeEqualTo(
      DurationType? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'durationType',
        value: value,
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition>
      durationTypeGreaterThan(
    DurationType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'durationType',
        value: value,
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> durationTypeLessThan(
    DurationType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'durationType',
        value: value,
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> durationTypeBetween(
    DurationType? lower,
    DurationType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'durationType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> regularityIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'regularity',
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition>
      regularityIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'regularity',
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> regularityEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'regularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> regularityGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'regularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> regularityLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'regularity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Schedule, Schedule, QAfterFilterCondition> regularityBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'regularity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ScheduleQueryObject
    on QueryBuilder<Schedule, Schedule, QFilterCondition> {}
