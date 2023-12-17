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
String _$createKeepAuthHash() => r'f31b4c230f9527ef7331159ea1cc2e0f4cb34ca2';

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
    KeepAuth keepAuth,
  ) {
    return CreateKeepAuthProvider(
      keepAuth,
    );
  }

  @override
  CreateKeepAuthProvider getProviderOverride(
    covariant CreateKeepAuthProvider provider,
  ) {
    return call(
      provider.keepAuth,
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
    KeepAuth keepAuth,
  ) : this._internal(
          (ref) => createKeepAuth(
            ref as CreateKeepAuthRef,
            keepAuth,
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
          keepAuth: keepAuth,
        );

  CreateKeepAuthProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.keepAuth,
  }) : super.internal();

  final KeepAuth keepAuth;

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
        keepAuth: keepAuth,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateKeepAuthProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateKeepAuthProvider && other.keepAuth == keepAuth;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, keepAuth.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateKeepAuthRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `keepAuth` of this provider.
  KeepAuth get keepAuth;
}

class _CreateKeepAuthProviderElement
    extends AutoDisposeFutureProviderElement<void> with CreateKeepAuthRef {
  _CreateKeepAuthProviderElement(super.provider);

  @override
  KeepAuth get keepAuth => (origin as CreateKeepAuthProvider).keepAuth;
}

String _$setAuthHash() => r'fc2bf2281e8bb23144b1a0609fdcdc378868455a';

/// See also [setAuth].
@ProviderFor(setAuth)
const setAuthProvider = SetAuthFamily();

/// See also [setAuth].
class SetAuthFamily extends Family<AsyncValue<void>> {
  /// See also [setAuth].
  const SetAuthFamily();

  /// See also [setAuth].
  SetAuthProvider call(
    bool value,
  ) {
    return SetAuthProvider(
      value,
    );
  }

  @override
  SetAuthProvider getProviderOverride(
    covariant SetAuthProvider provider,
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
  String? get name => r'setAuthProvider';
}

/// See also [setAuth].
class SetAuthProvider extends AutoDisposeFutureProvider<void> {
  /// See also [setAuth].
  SetAuthProvider(
    bool value,
  ) : this._internal(
          (ref) => setAuth(
            ref as SetAuthRef,
            value,
          ),
          from: setAuthProvider,
          name: r'setAuthProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setAuthHash,
          dependencies: SetAuthFamily._dependencies,
          allTransitiveDependencies: SetAuthFamily._allTransitiveDependencies,
          value: value,
        );

  SetAuthProvider._internal(
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
    FutureOr<void> Function(SetAuthRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetAuthProvider._internal(
        (ref) => create(ref as SetAuthRef),
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
    return _SetAuthProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetAuthProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetAuthRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `value` of this provider.
  bool get value;
}

class _SetAuthProviderElement extends AutoDisposeFutureProviderElement<void>
    with SetAuthRef {
  _SetAuthProviderElement(super.provider);

  @override
  bool get value => (origin as SetAuthProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
