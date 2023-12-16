// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keep_auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getKeepAuthHash() => r'd7a176979343d8341ae7a4cd16046d57656c2a24';

/// See also [getKeepAuth].
@ProviderFor(getKeepAuth)
final getKeepAuthProvider = AutoDisposeFutureProvider<KeepAuth?>.internal(
  getKeepAuth,
  name: r'getKeepAuthProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getKeepAuthHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetKeepAuthRef = AutoDisposeFutureProviderRef<KeepAuth?>;
String _$createKeepAuthHash() => r'8af8a8b9aef6c680273ee35d59d3b9240affba40';

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

/// See also [createKeepAuth].
@ProviderFor(createKeepAuth)
const createKeepAuthProvider = CreateKeepAuthFamily();

/// See also [createKeepAuth].
class CreateKeepAuthFamily extends Family<AsyncValue<void>> {
  /// See also [createKeepAuth].
  const CreateKeepAuthFamily();

  /// See also [createKeepAuth].
  CreateKeepAuthProvider call(
    bool value,
  ) {
    return CreateKeepAuthProvider(
      value,
    );
  }

  @override
  CreateKeepAuthProvider getProviderOverride(
    covariant CreateKeepAuthProvider provider,
  ) {
    return call(
      provider.value,
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
  String? get name => r'createKeepAuthProvider';
}

/// See also [createKeepAuth].
class CreateKeepAuthProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createKeepAuth].
  CreateKeepAuthProvider(
    bool value,
  ) : this._internal(
          (ref) => createKeepAuth(
            ref as CreateKeepAuthRef,
            value,
          ),
          from: createKeepAuthProvider,
          name: r'createKeepAuthProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createKeepAuthHash,
          dependencies: CreateKeepAuthFamily._dependencies,
          allTransitiveDependencies:
              CreateKeepAuthFamily._allTransitiveDependencies,
          value: value,
        );

  CreateKeepAuthProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.value,
  }) : super.internal();

  final bool value;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateKeepAuthRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateKeepAuthProvider._internal(
        (ref) => create(ref as CreateKeepAuthRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateKeepAuthProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateKeepAuthProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateKeepAuthRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `value` of this provider.
  bool get value;
}

class _CreateKeepAuthProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateKeepAuthRef {
  _CreateKeepAuthProviderElement(super.provider);

  @override
  bool get value => (origin as CreateKeepAuthProvider).value;
}

String _$switchAuthHash() => r'481dfd2604ef45972164e483e72c07644b343b8c';

/// See also [switchAuth].
@ProviderFor(switchAuth)
const switchAuthProvider = SwitchAuthFamily();

/// See also [switchAuth].
class SwitchAuthFamily extends Family<AsyncValue<void>> {
  /// See also [switchAuth].
  const SwitchAuthFamily();

  /// See also [switchAuth].
  SwitchAuthProvider call(
    bool value,
  ) {
    return SwitchAuthProvider(
      value,
    );
  }

  @override
  SwitchAuthProvider getProviderOverride(
    covariant SwitchAuthProvider provider,
  ) {
    return call(
      provider.value,
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
  String? get name => r'switchAuthProvider';
}

/// See also [switchAuth].
class SwitchAuthProvider extends AutoDisposeFutureProvider<void> {
  /// See also [switchAuth].
  SwitchAuthProvider(
    bool value,
  ) : this._internal(
          (ref) => switchAuth(
            ref as SwitchAuthRef,
            value,
          ),
          from: switchAuthProvider,
          name: r'switchAuthProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$switchAuthHash,
          dependencies: SwitchAuthFamily._dependencies,
          allTransitiveDependencies:
              SwitchAuthFamily._allTransitiveDependencies,
          value: value,
        );

  SwitchAuthProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.value,
  }) : super.internal();

  final bool value;

  @override
  Override overrideWith(
    FutureOr<void> Function(SwitchAuthRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SwitchAuthProvider._internal(
        (ref) => create(ref as SwitchAuthRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        value: value,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SwitchAuthProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SwitchAuthProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SwitchAuthRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `value` of this provider.
  bool get value;
}

class _SwitchAuthProviderElement extends AutoDisposeFutureProviderElement<void>
    with SwitchAuthRef {
  _SwitchAuthProviderElement(super.provider);

  @override
  bool get value => (origin as SwitchAuthProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
