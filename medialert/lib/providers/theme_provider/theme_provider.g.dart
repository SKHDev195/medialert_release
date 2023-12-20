// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getThemeHash() => r'8db9d4f1c15d8929bb1e318774309b6ab3a999bf';

/// See also [getTheme].
@ProviderFor(getTheme)
final getThemeProvider = AutoDisposeFutureProvider<Theme?>.internal(
  getTheme,
  name: r'getThemeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getThemeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetThemeRef = AutoDisposeFutureProviderRef<Theme?>;
String _$createThemeHash() => r'48aa059241840f63c0e4ae88526f5c5aec131aa0';

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

/// See also [createTheme].
@ProviderFor(createTheme)
const createThemeProvider = CreateThemeFamily();

/// See also [createTheme].
class CreateThemeFamily extends Family<AsyncValue<void>> {
  /// See also [createTheme].
  const CreateThemeFamily();

  /// See also [createTheme].
  CreateThemeProvider call(
    Theme theme,
  ) {
    return CreateThemeProvider(
      theme,
    );
  }

  @override
  CreateThemeProvider getProviderOverride(
    covariant CreateThemeProvider provider,
  ) {
    return call(
      provider.theme,
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
  String? get name => r'createThemeProvider';
}

/// See also [createTheme].
class CreateThemeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [createTheme].
  CreateThemeProvider(
    Theme theme,
  ) : this._internal(
          (ref) => createTheme(
            ref as CreateThemeRef,
            theme,
          ),
          from: createThemeProvider,
          name: r'createThemeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createThemeHash,
          dependencies: CreateThemeFamily._dependencies,
          allTransitiveDependencies:
              CreateThemeFamily._allTransitiveDependencies,
          theme: theme,
        );

  CreateThemeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.theme,
  }) : super.internal();

  final Theme theme;

  @override
  Override overrideWith(
    FutureOr<void> Function(CreateThemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateThemeProvider._internal(
        (ref) => create(ref as CreateThemeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        theme: theme,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _CreateThemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateThemeProvider && other.theme == theme;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, theme.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CreateThemeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `theme` of this provider.
  Theme get theme;
}

class _CreateThemeProviderElement extends AutoDisposeFutureProviderElement<void>
    with CreateThemeRef {
  _CreateThemeProviderElement(super.provider);

  @override
  Theme get theme => (origin as CreateThemeProvider).theme;
}

String _$setThemeHash() => r'2422bc175565e331bc89d13832d7b5854f1278e5';

/// See also [setTheme].
@ProviderFor(setTheme)
const setThemeProvider = SetThemeFamily();

/// See also [setTheme].
class SetThemeFamily extends Family<AsyncValue<void>> {
  /// See also [setTheme].
  const SetThemeFamily();

  /// See also [setTheme].
  SetThemeProvider call(
    bool value,
  ) {
    return SetThemeProvider(
      value,
    );
  }

  @override
  SetThemeProvider getProviderOverride(
    covariant SetThemeProvider provider,
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
  String? get name => r'setThemeProvider';
}

/// See also [setTheme].
class SetThemeProvider extends AutoDisposeFutureProvider<void> {
  /// See also [setTheme].
  SetThemeProvider(
    bool value,
  ) : this._internal(
          (ref) => setTheme(
            ref as SetThemeRef,
            value,
          ),
          from: setThemeProvider,
          name: r'setThemeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setThemeHash,
          dependencies: SetThemeFamily._dependencies,
          allTransitiveDependencies: SetThemeFamily._allTransitiveDependencies,
          value: value,
        );

  SetThemeProvider._internal(
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
    FutureOr<void> Function(SetThemeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetThemeProvider._internal(
        (ref) => create(ref as SetThemeRef),
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
    return _SetThemeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetThemeProvider && other.value == value;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, value.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SetThemeRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `value` of this provider.
  bool get value;
}

class _SetThemeProviderElement extends AutoDisposeFutureProviderElement<void>
    with SetThemeRef {
  _SetThemeProviderElement(super.provider);

  @override
  bool get value => (origin as SetThemeProvider).value;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
