// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication_notification.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMedicationNotificationCollection on Isar {
  IsarCollection<MedicationNotification> get medicationNotifications =>
      this.collection();
}

const MedicationNotificationSchema = CollectionSchema(
  name: r'medicationNotification',
  id: 7029176326357241321,
  properties: {
    r'dosage': PropertySchema(
      id: 0,
      name: r'dosage',
      type: IsarType.object,
      target: r'Dosage',
    ),
    r'medicationId': PropertySchema(
      id: 1,
      name: r'medicationId',
      type: IsarType.long,
    ),
    r'medicationName': PropertySchema(
      id: 2,
      name: r'medicationName',
      type: IsarType.string,
    ),
    r'notificationSchedule': PropertySchema(
      id: 3,
      name: r'notificationSchedule',
      type: IsarType.object,
      target: r'Schedule',
    ),
    r'offset': PropertySchema(
      id: 4,
      name: r'offset',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _medicationNotificationEstimateSize,
  serialize: _medicationNotificationSerialize,
  deserialize: _medicationNotificationDeserialize,
  deserializeProp: _medicationNotificationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Dosage': DosageSchema, r'Schedule': ScheduleSchema},
  getId: _medicationNotificationGetId,
  getLinks: _medicationNotificationGetLinks,
  attach: _medicationNotificationAttach,
  version: '3.1.0+1',
);

int _medicationNotificationEstimateSize(
  MedicationNotification object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      DosageSchema.estimateSize(object.dosage, allOffsets[Dosage]!, allOffsets);
  bytesCount += 3 + object.medicationName.length * 3;
  bytesCount += 3 +
      ScheduleSchema.estimateSize(
          object.schedule, allOffsets[Schedule]!, allOffsets);
  return bytesCount;
}

void _medicationNotificationSerialize(
  MedicationNotification object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObject<Dosage>(
    offsets[0],
    allOffsets,
    DosageSchema.serialize,
    object.dosage,
  );
  writer.writeLong(offsets[1], object.medicationId);
  writer.writeString(offsets[2], object.medicationName);
  writer.writeObject<Schedule>(
    offsets[3],
    allOffsets,
    ScheduleSchema.serialize,
    object.schedule,
  );
  writer.writeDateTime(offsets[4], object.notificationOffset);
}

MedicationNotification _medicationNotificationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MedicationNotification(
    dosage: reader.readObjectOrNull<Dosage>(
          offsets[0],
          DosageSchema.deserialize,
          allOffsets,
        ) ??
        Dosage(),
    notificationId: id,
    medicationId: reader.readLong(offsets[1]),
    medicationName: reader.readString(offsets[2]),
    schedule: reader.readObjectOrNull<Schedule>(
          offsets[3],
          ScheduleSchema.deserialize,
          allOffsets,
        ) ??
        Schedule(),
    notificationOffset: reader.readDateTimeOrNull(offsets[4]),
  );
  return object;
}

P _medicationNotificationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectOrNull<Dosage>(
            offset,
            DosageSchema.deserialize,
            allOffsets,
          ) ??
          Dosage()) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<Schedule>(
            offset,
            ScheduleSchema.deserialize,
            allOffsets,
          ) ??
          Schedule()) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medicationNotificationGetId(MedicationNotification object) {
  return object.notificationId;
}

List<IsarLinkBase<dynamic>> _medicationNotificationGetLinks(
    MedicationNotification object) {
  return [];
}

void _medicationNotificationAttach(
    IsarCollection<dynamic> col, Id id, MedicationNotification object) {
  object.notificationId = id;
}

extension MedicationNotificationQueryWhereSort
    on QueryBuilder<MedicationNotification, MedicationNotification, QWhere> {
  QueryBuilder<MedicationNotification, MedicationNotification, QAfterWhere>
      anyNotificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MedicationNotificationQueryWhere on QueryBuilder<
    MedicationNotification, MedicationNotification, QWhereClause> {
  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterWhereClause> notificationIdEqualTo(Id notificationId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: notificationId,
        upper: notificationId,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterWhereClause> notificationIdNotEqualTo(Id notificationId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: notificationId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: notificationId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: notificationId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(
                  upper: notificationId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
          QAfterWhereClause>
      notificationIdGreaterThan(Id notificationId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: notificationId, includeLower: include),
      );
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
          QAfterWhereClause>
      notificationIdLessThan(Id notificationId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: notificationId, includeUpper: include),
      );
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterWhereClause> notificationIdBetween(
    Id lowerNotificationId,
    Id upperNotificationId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerNotificationId,
        includeLower: includeLower,
        upper: upperNotificationId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MedicationNotificationQueryFilter on QueryBuilder<
    MedicationNotification, MedicationNotification, QFilterCondition> {
  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationIdGreaterThan(
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

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationIdLessThan(
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

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationIdBetween(
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

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationIdEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicationId',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medicationId',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medicationId',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medicationId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'medicationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'medicationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'medicationName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'medicationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'medicationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
          QAfterFilterCondition>
      medicationNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'medicationName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
          QAfterFilterCondition>
      medicationNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'medicationName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'medicationName',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> medicationNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'medicationName',
        value: '',
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationOffsetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'offset',
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationOffsetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'offset',
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationOffsetEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationOffsetGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationOffsetLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> notificationOffsetBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'offset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MedicationNotificationQueryObject on QueryBuilder<
    MedicationNotification, MedicationNotification, QFilterCondition> {
  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> dosage(FilterQuery<Dosage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dosage');
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification,
      QAfterFilterCondition> schedule(FilterQuery<Schedule> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'notificationSchedule');
    });
  }
}

extension MedicationNotificationQueryLinks on QueryBuilder<
    MedicationNotification, MedicationNotification, QFilterCondition> {}

extension MedicationNotificationQuerySortBy
    on QueryBuilder<MedicationNotification, MedicationNotification, QSortBy> {
  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      sortByMedicationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationId', Sort.asc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      sortByMedicationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationId', Sort.desc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      sortByMedicationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationName', Sort.asc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      sortByMedicationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationName', Sort.desc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      sortByNotificationOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.asc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      sortByNotificationOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.desc);
    });
  }
}

extension MedicationNotificationQuerySortThenBy on QueryBuilder<
    MedicationNotification, MedicationNotification, QSortThenBy> {
  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByNotificationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByNotificationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByMedicationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationId', Sort.asc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByMedicationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationId', Sort.desc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByMedicationName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationName', Sort.asc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByMedicationNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'medicationName', Sort.desc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByNotificationOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.asc);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QAfterSortBy>
      thenByNotificationOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.desc);
    });
  }
}

extension MedicationNotificationQueryWhereDistinct
    on QueryBuilder<MedicationNotification, MedicationNotification, QDistinct> {
  QueryBuilder<MedicationNotification, MedicationNotification, QDistinct>
      distinctByMedicationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medicationId');
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QDistinct>
      distinctByMedicationName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'medicationName',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MedicationNotification, MedicationNotification, QDistinct>
      distinctByNotificationOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'offset');
    });
  }
}

extension MedicationNotificationQueryProperty on QueryBuilder<
    MedicationNotification, MedicationNotification, QQueryProperty> {
  QueryBuilder<MedicationNotification, int, QQueryOperations>
      notificationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MedicationNotification, Dosage, QQueryOperations>
      dosageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dosage');
    });
  }

  QueryBuilder<MedicationNotification, int, QQueryOperations>
      medicationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medicationId');
    });
  }

  QueryBuilder<MedicationNotification, String, QQueryOperations>
      medicationNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'medicationName');
    });
  }

  QueryBuilder<MedicationNotification, Schedule, QQueryOperations>
      scheduleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'notificationSchedule');
    });
  }

  QueryBuilder<MedicationNotification, DateTime?, QQueryOperations>
      notificationOffsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'offset');
    });
  }
}
