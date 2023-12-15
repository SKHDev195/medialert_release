// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medications_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$medicationsHash() => r'018e54f93b80be209637f89544db5bb1521b9a70';

/// See also [medications].
@ProviderFor(medications)
final medicationsProvider =
    AutoDisposeFutureProvider<List<Medication>>.internal(
  medications,
  name: r'medicationsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$medicationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef MedicationsRef = AutoDisposeFutureProviderRef<List<Medication>>;
String _$getMedicationHash() => r'fcec4a8ac7f4fe3e59d89175152e90fdb9652cc7';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getMedication].
@ProviderFor(getMedication)
const getMedicationProvider = GetMedicationFamily();

/// See also [getMedication].
class GetMedicationFamily extends Family<AsyncValue<Medication>> {
  /// See also [getMedication].
  const GetMedicationFamily();

  /// See also [getMedication].
  GetMedicationProvider call(
    int medicationId,
  ) {
    return GetMedicationProvider(
      medicationId,
    );
  }

  @override
  GetMedicationProvider getProviderOverride(
    covariant GetMedicationProvider provider,
  ) {
    return call(
      provider.medicationId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMedicationProvider';
}

/// See also [getMedication].
class GetMedicationProvider extends AutoDisposeFutureProvider<Medication> {
  /// See also [getMedication].
  GetMedicationProvider(
    int medicationId,
  ) : this._internal(
          (ref) => getMedication(
            ref as GetMedicationRef,
            medicationId,
          ),
          from: getMedicationProvider,
          name: r'getMedicationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMedicationHash,
          dependencies: GetMedicationFamily._dependencies,
          allTransitiveDependencies:
              GetMedicationFamily._allTransitiveDependencies,
          medicationId: medicationId,
        );

  GetMedicationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.medicationId,
  }) : super.internal();

  final int medicationId;

  @override
  Override overrideWith(
    FutureOr<Medication> Function(GetMedicationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMedicationProvider._internal(
        (ref) => create(ref as GetMedicationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        medicationId: medicationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Medication> createElement() {
    return _GetMedicationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMedicationProvider && other.medicationId == medicationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, medicationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetMedicationRef on AutoDisposeFutureProviderRef<Medication> {
  /// The parameter `medicationId` of this provider.
  int get medicationId;
}

class _GetMedicationProviderElement
    extends AutoDisposeFutureProviderElement<Medication> with GetMedicationRef {
  _GetMedicationProviderElement(super.provider);

  @override
  int get medicationId => (origin as GetMedicationProvider).medicationId;
}

String _$createMedicationHash() => r'4e7d9ddb05e1e5871b0550933cc40757d922a554';

/// See also [createMedication].
@ProviderFor(createMedication)
const createMedicationProvider = CreateMedicationFamily();

/// See also [createMedication].
class CreateMedicationFamily extends Family<AsyncValue<void>> {
  /// See also [createMedication].
  const CreateMedicationFamily();

  /// See also [createMedication].
  CreateMedicationProvider call(
    String medicationName,
    Dosage dosage,
    bool? isSecret,
    Schedule? schedule,
    String? specialNote,
  ) {
    return CreateMedicationProvider(
      medicationName,
      dosage,
      isSecret,
      schedule,
      specialNote,
    );
  }

  @override
  CreateMedicationProvider getProviderOverride(
    covariant CreateMedicationProvider provider,
  ) {
    return call(
      provider.medicationName,
      provider.dosage,
      provider.isSecret,
      provider.schedule,
      provider.specialNote,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createMedicationProvider';
}

/// See also [createMedication].
class CreateMedicationProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createMedication].
  CreateMedicationProvider(
    String medicationName,
    Dosage dosage,
    bool? isSecret,
    Schedule? schedule,
    String? specialNote,
  ) : this._internal(
          (ref) => createMedication(
            ref as CreateMedicationRef,
            medicationName,
            dosage,
            isSecret,
            schedule,
            specialNote,
          ),
          from: createMedicationProvider,
          name: r'createMedicationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createMedicationHash,
          dependencies: CreateMedicationFamily._dependencies,
          allTransitiveDependencies:
              CreateMedicationFamily._allTransitiveDependencies,
          medicationName: medicationName,
          dosage: dosage,
          isSecret: isSecret,
          schedule: schedule,
          specialNote: specialNote,
        );

  CreateMedicationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.medicationName,
    required this.dosage,
    required this.isSecret,
    required this.schedule,
    required this.specialNote,
  }) : super.internal();

  final String medicationName;
  final Dosage dosage;
  final bool? isSecret;
  final Schedule? schedule;
  final String? specialNote;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateMedicationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateMedicationProvider._internal(
        (ref) => create(ref as CreateMedicationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        medicationName: medicationName,
        dosage: dosage,
        isSecret: isSecret,
        schedule: schedule,
        specialNote: specialNote,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateMedicationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateMedicationProvider &&
        other.medicationName == medicationName &&
        other.dosage == dosage &&
        other.isSecret == isSecret &&
        other.schedule == schedule &&
        other.specialNote == specialNote;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, medicationName.hashCode);
    hash = _SystemHash.combine(hash, dosage.hashCode);
    hash = _SystemHash.combine(hash, isSecret.hashCode);
    hash = _SystemHash.combine(hash, schedule.hashCode);
    hash = _SystemHash.combine(hash, specialNote.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateMedicationRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `medicationName` of this provider.
  String get medicationName;

  /// The parameter `dosage` of this provider.
  Dosage get dosage;

  /// The parameter `isSecret` of this provider.
  bool? get isSecret;

  /// The parameter `schedule` of this provider.
  Schedule? get schedule;

  /// The parameter `specialNote` of this provider.
  String? get specialNote;
}

class _CreateMedicationProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateMedicationRef {
  _CreateMedicationProviderElement(super.provider);

  @override
  String get medicationName =>
      (origin as CreateMedicationProvider).medicationName;
  @override
  Dosage get dosage => (origin as CreateMedicationProvider).dosage;
  @override
  bool? get isSecret => (origin as CreateMedicationProvider).isSecret;
  @override
  Schedule? get schedule => (origin as CreateMedicationProvider).schedule;
  @override
  String? get specialNote => (origin as CreateMedicationProvider).specialNote;
}

String _$updateMedicationHash() => r'926aa08d63373f7f7da4292b4baaee4f3b05ba89';

/// See also [updateMedication].
@ProviderFor(updateMedication)
const updateMedicationProvider = UpdateMedicationFamily();

/// See also [updateMedication].
class UpdateMedicationFamily extends Family<AsyncValue<void>> {
  /// See also [updateMedication].
  const UpdateMedicationFamily();

  /// See also [updateMedication].
  UpdateMedicationProvider call(
    Medication medication,
    String medicationName,
    Dosage dosage,
    bool? isSecret,
    Schedule? schedule,
    String? specialNote,
  ) {
    return UpdateMedicationProvider(
      medication,
      medicationName,
      dosage,
      isSecret,
      schedule,
      specialNote,
    );
  }

  @override
  UpdateMedicationProvider getProviderOverride(
    covariant UpdateMedicationProvider provider,
  ) {
    return call(
      provider.medication,
      provider.medicationName,
      provider.dosage,
      provider.isSecret,
      provider.schedule,
      provider.specialNote,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateMedicationProvider';
}

/// See also [updateMedication].
class UpdateMedicationProvider extends AutoDisposeFutureProvider<void> {
  /// See also [updateMedication].
  UpdateMedicationProvider(
    Medication medication,
    String medicationName,
    Dosage dosage,
    bool? isSecret,
    Schedule? schedule,
    String? specialNote,
  ) : this._internal(
          (ref) => updateMedication(
            ref as UpdateMedicationRef,
            medication,
            medicationName,
            dosage,
            isSecret,
            schedule,
            specialNote,
          ),
          from: updateMedicationProvider,
          name: r'updateMedicationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateMedicationHash,
          dependencies: UpdateMedicationFamily._dependencies,
          allTransitiveDependencies:
              UpdateMedicationFamily._allTransitiveDependencies,
          medication: medication,
          medicationName: medicationName,
          dosage: dosage,
          isSecret: isSecret,
          schedule: schedule,
          specialNote: specialNote,
        );

  UpdateMedicationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.medication,
    required this.medicationName,
    required this.dosage,
    required this.isSecret,
    required this.schedule,
    required this.specialNote,
  }) : super.internal();

  final Medication medication;
  final String medicationName;
  final Dosage dosage;
  final bool? isSecret;
  final Schedule? schedule;
  final String? specialNote;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateMedicationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateMedicationProvider._internal(
        (ref) => create(ref as UpdateMedicationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        medication: medication,
        medicationName: medicationName,
        dosage: dosage,
        isSecret: isSecret,
        schedule: schedule,
        specialNote: specialNote,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateMedicationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateMedicationProvider &&
        other.medication == medication &&
        other.medicationName == medicationName &&
        other.dosage == dosage &&
        other.isSecret == isSecret &&
        other.schedule == schedule &&
        other.specialNote == specialNote;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, medication.hashCode);
    hash = _SystemHash.combine(hash, medicationName.hashCode);
    hash = _SystemHash.combine(hash, dosage.hashCode);
    hash = _SystemHash.combine(hash, isSecret.hashCode);
    hash = _SystemHash.combine(hash, schedule.hashCode);
    hash = _SystemHash.combine(hash, specialNote.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UpdateMedicationRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `medication` of this provider.
  Medication get medication;

  /// The parameter `medicationName` of this provider.
  String get medicationName;

  /// The parameter `dosage` of this provider.
  Dosage get dosage;

  /// The parameter `isSecret` of this provider.
  bool? get isSecret;

  /// The parameter `schedule` of this provider.
  Schedule? get schedule;

  /// The parameter `specialNote` of this provider.
  String? get specialNote;
}

class _UpdateMedicationProviderElement
    extends AutoDisposeFutureProviderElement<void> with UpdateMedicationRef {
  _UpdateMedicationProviderElement(super.provider);

  @override
  Medication get medication => (origin as UpdateMedicationProvider).medication;
  @override
  String get medicationName =>
      (origin as UpdateMedicationProvider).medicationName;
  @override
  Dosage get dosage => (origin as UpdateMedicationProvider).dosage;
  @override
  bool? get isSecret => (origin as UpdateMedicationProvider).isSecret;
  @override
  Schedule? get schedule => (origin as UpdateMedicationProvider).schedule;
  @override
  String? get specialNote => (origin as UpdateMedicationProvider).specialNote;
}

String _$deleteMedicationHash() => r'd8043df2faa15851a22c7b1148b75831b36c1516';

/// See also [deleteMedication].
@ProviderFor(deleteMedication)
const deleteMedicationProvider = DeleteMedicationFamily();

/// See also [deleteMedication].
class DeleteMedicationFamily extends Family<AsyncValue<void>> {
  /// See also [deleteMedication].
  const DeleteMedicationFamily();

  /// See also [deleteMedication].
  DeleteMedicationProvider call(
    int medicationId,
  ) {
    return DeleteMedicationProvider(
      medicationId,
    );
  }

  @override
  DeleteMedicationProvider getProviderOverride(
    covariant DeleteMedicationProvider provider,
  ) {
    return call(
      provider.medicationId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteMedicationProvider';
}

/// See also [deleteMedication].
class DeleteMedicationProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteMedication].
  DeleteMedicationProvider(
    int medicationId,
  ) : this._internal(
          (ref) => deleteMedication(
            ref as DeleteMedicationRef,
            medicationId,
          ),
          from: deleteMedicationProvider,
          name: r'deleteMedicationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteMedicationHash,
          dependencies: DeleteMedicationFamily._dependencies,
          allTransitiveDependencies:
              DeleteMedicationFamily._allTransitiveDependencies,
          medicationId: medicationId,
        );

  DeleteMedicationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.medicationId,
  }) : super.internal();

  final int medicationId;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteMedicationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteMedicationProvider._internal(
        (ref) => create(ref as DeleteMedicationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        medicationId: medicationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteMedicationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteMedicationProvider &&
        other.medicationId == medicationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, medicationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteMedicationRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `medicationId` of this provider.
  int get medicationId;
}

class _DeleteMedicationProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteMedicationRef {
  _DeleteMedicationProviderElement(super.provider);

  @override
  int get medicationId => (origin as DeleteMedicationProvider).medicationId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
