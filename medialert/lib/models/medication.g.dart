// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medication.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMedicationCollection on Isar {
  IsarCollection<Medication> get medications => this.collection();
}

const MedicationSchema = CollectionSchema(
  name: r'Medication',
  id: -2541039227040579663,
  properties: {
    r'dosage': PropertySchema(
      id: 0,
      name: r'dosage',
      type: IsarType.object,
      target: r'Dosage',
    ),
    r'isSecret': PropertySchema(
      id: 1,
      name: r'isSecret',
      type: IsarType.bool,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
    r'schedule': PropertySchema(
      id: 3,
      name: r'schedule',
      type: IsarType.object,
      target: r'Schedule',
    ),
    r'specialNote': PropertySchema(
      id: 4,
      name: r'specialNote',
      type: IsarType.string,
    )
  },
  estimateSize: _medicationEstimateSize,
  serialize: _medicationSerialize,
  deserialize: _medicationDeserialize,
  deserializeProp: _medicationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Dosage': DosageSchema, r'Schedule': ScheduleSchema},
  getId: _medicationGetId,
  getLinks: _medicationGetLinks,
  attach: _medicationAttach,
  version: '3.1.0+1',
);

int _medicationEstimateSize(
  Medication object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 +
      DosageSchema.estimateSize(object.dosage, allOffsets[Dosage]!, allOffsets);
  bytesCount += 3 + object.name.length * 3;
  {
    final value = object.schedule;
    if (value != null) {
      bytesCount += 3 +
          ScheduleSchema.estimateSize(value, allOffsets[Schedule]!, allOffsets);
    }
  }
  {
    final value = object.specialNote;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _medicationSerialize(
  Medication object,
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
  writer.writeBool(offsets[1], object.isSecret);
  writer.writeString(offsets[2], object.name);
  writer.writeObject<Schedule>(
    offsets[3],
    allOffsets,
    ScheduleSchema.serialize,
    object.schedule,
  );
  writer.writeString(offsets[4], object.specialNote);
}

Medication _medicationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Medication(
    dosage: reader.readObjectOrNull<Dosage>(
          offsets[0],
          DosageSchema.deserialize,
          allOffsets,
        ) ??
        Dosage(),
    isSecret: reader.readBoolOrNull(offsets[1]),
    name: reader.readString(offsets[2]),
    schedule: reader.readObjectOrNull<Schedule>(
      offsets[3],
      ScheduleSchema.deserialize,
      allOffsets,
    ),
    specialNote: reader.readStringOrNull(offsets[4]),
  );
  object.medicationId = id;
  return object;
}

P _medicationDeserializeProp<P>(
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
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<Schedule>(
        offset,
        ScheduleSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _medicationGetId(Medication object) {
  return object.medicationId;
}

List<IsarLinkBase<dynamic>> _medicationGetLinks(Medication object) {
  return [];
}

void _medicationAttach(IsarCollection<dynamic> col, Id id, Medication object) {
  object.medicationId = id;
}

extension MedicationQueryWhereSort
    on QueryBuilder<Medication, Medication, QWhere> {
  QueryBuilder<Medication, Medication, QAfterWhere> anyMedicationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MedicationQueryWhere
    on QueryBuilder<Medication, Medication, QWhereClause> {
  QueryBuilder<Medication, Medication, QAfterWhereClause> medicationIdEqualTo(
      Id medicationId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: medicationId,
        upper: medicationId,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterWhereClause>
      medicationIdNotEqualTo(Id medicationId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: medicationId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: medicationId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(
                  lower: medicationId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: medicationId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Medication, Medication, QAfterWhereClause>
      medicationIdGreaterThan(Id medicationId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: medicationId, includeLower: include),
      );
    });
  }

  QueryBuilder<Medication, Medication, QAfterWhereClause> medicationIdLessThan(
      Id medicationId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: medicationId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Medication, Medication, QAfterWhereClause> medicationIdBetween(
    Id lowerMedicationId,
    Id upperMedicationId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerMedicationId,
        includeLower: includeLower,
        upper: upperMedicationId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension MedicationQueryFilter
    on QueryBuilder<Medication, Medication, QFilterCondition> {
  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      medicationIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      medicationIdGreaterThan(
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

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      medicationIdLessThan(
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

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      medicationIdBetween(
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

  QueryBuilder<Medication, Medication, QAfterFilterCondition> isSecretIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isSecret',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      isSecretIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isSecret',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> isSecretEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isSecret',
        value: value,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> scheduleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'schedule',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      scheduleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'schedule',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'specialNote',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'specialNote',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialNote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'specialNote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'specialNote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'specialNote',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'specialNote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'specialNote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'specialNote',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'specialNote',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'specialNote',
        value: '',
      ));
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition>
      specialNoteIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'specialNote',
        value: '',
      ));
    });
  }
}

extension MedicationQueryObject
    on QueryBuilder<Medication, Medication, QFilterCondition> {
  QueryBuilder<Medication, Medication, QAfterFilterCondition> dosage(
      FilterQuery<Dosage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'dosage');
    });
  }

  QueryBuilder<Medication, Medication, QAfterFilterCondition> schedule(
      FilterQuery<Schedule> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'schedule');
    });
  }
}

extension MedicationQueryLinks
    on QueryBuilder<Medication, Medication, QFilterCondition> {}

extension MedicationQuerySortBy
    on QueryBuilder<Medication, Medication, QSortBy> {
  QueryBuilder<Medication, Medication, QAfterSortBy> sortByIsSecret() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSecret', Sort.asc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> sortByIsSecretDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSecret', Sort.desc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> sortBySpecialNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNote', Sort.asc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> sortBySpecialNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNote', Sort.desc);
    });
  }
}

extension MedicationQuerySortThenBy
    on QueryBuilder<Medication, Medication, QSortThenBy> {
  QueryBuilder<Medication, Medication, QAfterSortBy> thenByMedicationId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> thenByMedicationIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> thenByIsSecret() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSecret', Sort.asc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> thenByIsSecretDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isSecret', Sort.desc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> thenBySpecialNote() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNote', Sort.asc);
    });
  }

  QueryBuilder<Medication, Medication, QAfterSortBy> thenBySpecialNoteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'specialNote', Sort.desc);
    });
  }
}

extension MedicationQueryWhereDistinct
    on QueryBuilder<Medication, Medication, QDistinct> {
  QueryBuilder<Medication, Medication, QDistinct> distinctByIsSecret() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isSecret');
    });
  }

  QueryBuilder<Medication, Medication, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Medication, Medication, QDistinct> distinctBySpecialNote(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'specialNote', caseSensitive: caseSensitive);
    });
  }
}

extension MedicationQueryProperty
    on QueryBuilder<Medication, Medication, QQueryProperty> {
  QueryBuilder<Medication, int, QQueryOperations> medicationIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Medication, Dosage, QQueryOperations> dosageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dosage');
    });
  }

  QueryBuilder<Medication, bool?, QQueryOperations> isSecretProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isSecret');
    });
  }

  QueryBuilder<Medication, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Medication, Schedule?, QQueryOperations> scheduleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'schedule');
    });
  }

  QueryBuilder<Medication, String?, QQueryOperations> specialNoteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'specialNote');
    });
  }
}
