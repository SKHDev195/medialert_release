// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getNotificationsPermissionStatusHash() =>
    r'5250249a1948c765f81466d2297b19b648a115dd';

/// See also [getNotificationsPermissionStatus].
@ProviderFor(getNotificationsPermissionStatus)
final getNotificationsPermissionStatusProvider =
    AutoDisposeFutureProvider<bool>.internal(
  getNotificationsPermissionStatus,
  name: r'getNotificationsPermissionStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getNotificationsPermissionStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetNotificationsPermissionStatusRef
    = AutoDisposeFutureProviderRef<bool>;
String _$disableMedicationNotificationsHash() =>
    r'982e20dc63f5e2ac1c1e75db6ba7d537127f5b9b';

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

/// See also [disableMedicationNotifications].
@ProviderFor(disableMedicationNotifications)
const disableMedicationNotificationsProvider =
    DisableMedicationNotificationsFamily();

/// See also [disableMedicationNotifications].
class DisableMedicationNotificationsFamily extends Family<AsyncValue<void>> {
  /// See also [disableMedicationNotifications].
  const DisableMedicationNotificationsFamily();

  /// See also [disableMedicationNotifications].
  DisableMedicationNotificationsProvider call(
    Medication medication,
  ) {
    return DisableMedicationNotificationsProvider(
      medication,
    );
  }

  @override
  DisableMedicationNotificationsProvider getProviderOverride(
    covariant DisableMedicationNotificationsProvider provider,
  ) {
    return call(
      provider.medication,
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
  String? get name => r'disableMedicationNotificationsProvider';
}

/// See also [disableMedicationNotifications].
class DisableMedicationNotificationsProvider
    extends AutoDisposeFutureProvider<void> {
  /// See also [disableMedicationNotifications].
  DisableMedicationNotificationsProvider(
    Medication medication,
  ) : this._internal(
          (ref) => disableMedicationNotifications(
            ref as DisableMedicationNotificationsRef,
            medication,
          ),
          from: disableMedicationNotificationsProvider,
          name: r'disableMedicationNotificationsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$disableMedicationNotificationsHash,
          dependencies: DisableMedicationNotificationsFamily._dependencies,
          allTransitiveDependencies:
              DisableMedicationNotificationsFamily._allTransitiveDependencies,
          medication: medication,
        );

  DisableMedicationNotificationsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.medication,
  }) : super.internal();

  final Medication medication;

  @override
  Override overrideWith(
    FutureOr<void> Function(DisableMedicationNotificationsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DisableMedicationNotificationsProvider._internal(
        (ref) => create(ref as DisableMedicationNotificationsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        medication: medication,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DisableMedicationNotificationsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DisableMedicationNotificationsProvider &&
        other.medication == medication;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, medication.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DisableMedicationNotificationsRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `medication` of this provider.
  Medication get medication;
}

class _DisableMedicationNotificationsProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with DisableMedicationNotificationsRef {
  _DisableMedicationNotificationsProviderElement(super.provider);

  @override
  Medication get medication =>
      (origin as DisableMedicationNotificationsProvider).medication;
}

String _$getNotificationHash() => r'026557455af87fbe63e8e2bf7ad3db6b82265324';

/// See also [getNotification].
@ProviderFor(getNotification)
const getNotificationProvider = GetNotificationFamily();

/// See also [getNotification].
class GetNotificationFamily extends Family<AsyncValue<dynamic>> {
  /// See also [getNotification].
  const GetNotificationFamily();

  /// See also [getNotification].
  GetNotificationProvider call(
    int medicationId,
  ) {
    return GetNotificationProvider(
      medicationId,
    );
  }

  @override
  GetNotificationProvider getProviderOverride(
    covariant GetNotificationProvider provider,
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
  String? get name => r'getNotificationProvider';
}

/// See also [getNotification].
class GetNotificationProvider extends AutoDisposeFutureProvider<dynamic> {
  /// See also [getNotification].
  GetNotificationProvider(
    int medicationId,
  ) : this._internal(
          (ref) => getNotification(
            ref as GetNotificationRef,
            medicationId,
          ),
          from: getNotificationProvider,
          name: r'getNotificationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNotificationHash,
          dependencies: GetNotificationFamily._dependencies,
          allTransitiveDependencies:
              GetNotificationFamily._allTransitiveDependencies,
          medicationId: medicationId,
        );

  GetNotificationProvider._internal(
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
    FutureOr<dynamic> Function(GetNotificationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNotificationProvider._internal(
        (ref) => create(ref as GetNotificationRef),
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
  AutoDisposeFutureProviderElement<dynamic> createElement() {
    return _GetNotificationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNotificationProvider &&
        other.medicationId == medicationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, medicationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetNotificationRef on AutoDisposeFutureProviderRef<dynamic> {
  /// The parameter `medicationId` of this provider.
  int get medicationId;
}

class _GetNotificationProviderElement
    extends AutoDisposeFutureProviderElement<dynamic> with GetNotificationRef {
  _GetNotificationProviderElement(super.provider);

  @override
  int get medicationId => (origin as GetNotificationProvider).medicationId;
}

String _$saveNotificationHash() => r'015321227a581b291eaac3954eda37cfe5e46f5e';

/// See also [saveNotification].
@ProviderFor(saveNotification)
const saveNotificationProvider = SaveNotificationFamily();

/// See also [saveNotification].
class SaveNotificationFamily extends Family<AsyncValue<void>> {
  /// See also [saveNotification].
  const SaveNotificationFamily();

  /// See also [saveNotification].
  SaveNotificationProvider call(
    int medicationId,
    String medicationName,
    Dosage dosage,
    Schedule schedule,
    DateTime? notificationOffset,
  ) {
    return SaveNotificationProvider(
      medicationId,
      medicationName,
      dosage,
      schedule,
      notificationOffset,
    );
  }

  @override
  SaveNotificationProvider getProviderOverride(
    covariant SaveNotificationProvider provider,
  ) {
    return call(
      provider.medicationId,
      provider.medicationName,
      provider.dosage,
      provider.schedule,
      provider.notificationOffset,
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
  String? get name => r'saveNotificationProvider';
}

/// See also [saveNotification].
class SaveNotificationProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveNotification].
  SaveNotificationProvider(
    int medicationId,
    String medicationName,
    Dosage dosage,
    Schedule schedule,
    DateTime? notificationOffset,
  ) : this._internal(
          (ref) => saveNotification(
            ref as SaveNotificationRef,
            medicationId,
            medicationName,
            dosage,
            schedule,
            notificationOffset,
          ),
          from: saveNotificationProvider,
          name: r'saveNotificationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveNotificationHash,
          dependencies: SaveNotificationFamily._dependencies,
          allTransitiveDependencies:
              SaveNotificationFamily._allTransitiveDependencies,
          medicationId: medicationId,
          medicationName: medicationName,
          dosage: dosage,
          schedule: schedule,
          notificationOffset: notificationOffset,
        );

  SaveNotificationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.medicationId,
    required this.medicationName,
    required this.dosage,
    required this.schedule,
    required this.notificationOffset,
  }) : super.internal();

  final int medicationId;
  final String medicationName;
  final Dosage dosage;
  final Schedule schedule;
  final DateTime? notificationOffset;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveNotificationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveNotificationProvider._internal(
        (ref) => create(ref as SaveNotificationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        medicationId: medicationId,
        medicationName: medicationName,
        dosage: dosage,
        schedule: schedule,
        notificationOffset: notificationOffset,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveNotificationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveNotificationProvider &&
        other.medicationId == medicationId &&
        other.medicationName == medicationName &&
        other.dosage == dosage &&
        other.schedule == schedule &&
        other.notificationOffset == notificationOffset;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, medicationId.hashCode);
    hash = _SystemHash.combine(hash, medicationName.hashCode);
    hash = _SystemHash.combine(hash, dosage.hashCode);
    hash = _SystemHash.combine(hash, schedule.hashCode);
    hash = _SystemHash.combine(hash, notificationOffset.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveNotificationRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `medicationId` of this provider.
  int get medicationId;

  /// The parameter `medicationName` of this provider.
  String get medicationName;

  /// The parameter `dosage` of this provider.
  Dosage get dosage;

  /// The parameter `schedule` of this provider.
  Schedule get schedule;

  /// The parameter `notificationOffset` of this provider.
  DateTime? get notificationOffset;
}

class _SaveNotificationProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveNotificationRef {
  _SaveNotificationProviderElement(super.provider);

  @override
  int get medicationId => (origin as SaveNotificationProvider).medicationId;
  @override
  String get medicationName =>
      (origin as SaveNotificationProvider).medicationName;
  @override
  Dosage get dosage => (origin as SaveNotificationProvider).dosage;
  @override
  Schedule get schedule => (origin as SaveNotificationProvider).schedule;
  @override
  DateTime? get notificationOffset =>
      (origin as SaveNotificationProvider).notificationOffset;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
