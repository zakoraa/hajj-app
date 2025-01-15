// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$settingViewModelHash() => r'ebcebf17cdec3b56deca17fa908057dae2b07896';

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

abstract class _$SettingViewModel
    extends BuildlessAutoDisposeNotifier<AppThemeType> {
  late final BuildContext? context;

  AppThemeType build({
    BuildContext? context,
  });
}

/// See also [SettingViewModel].
@ProviderFor(SettingViewModel)
const settingViewModelProvider = SettingViewModelFamily();

/// See also [SettingViewModel].
class SettingViewModelFamily extends Family<AppThemeType> {
  /// See also [SettingViewModel].
  const SettingViewModelFamily();

  /// See also [SettingViewModel].
  SettingViewModelProvider call({
    BuildContext? context,
  }) {
    return SettingViewModelProvider(
      context: context,
    );
  }

  @override
  SettingViewModelProvider getProviderOverride(
    covariant SettingViewModelProvider provider,
  ) {
    return call(
      context: provider.context,
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
  String? get name => r'settingViewModelProvider';
}

/// See also [SettingViewModel].
class SettingViewModelProvider
    extends AutoDisposeNotifierProviderImpl<SettingViewModel, AppThemeType> {
  /// See also [SettingViewModel].
  SettingViewModelProvider({
    BuildContext? context,
  }) : this._internal(
          () => SettingViewModel()..context = context,
          from: settingViewModelProvider,
          name: r'settingViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$settingViewModelHash,
          dependencies: SettingViewModelFamily._dependencies,
          allTransitiveDependencies:
              SettingViewModelFamily._allTransitiveDependencies,
          context: context,
        );

  SettingViewModelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.context,
  }) : super.internal();

  final BuildContext? context;

  @override
  AppThemeType runNotifierBuild(
    covariant SettingViewModel notifier,
  ) {
    return notifier.build(
      context: context,
    );
  }

  @override
  Override overrideWith(SettingViewModel Function() create) {
    return ProviderOverride(
      origin: this,
      override: SettingViewModelProvider._internal(
        () => create()..context = context,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        context: context,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SettingViewModel, AppThemeType>
      createElement() {
    return _SettingViewModelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SettingViewModelProvider && other.context == context;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, context.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SettingViewModelRef on AutoDisposeNotifierProviderRef<AppThemeType> {
  /// The parameter `context` of this provider.
  BuildContext? get context;
}

class _SettingViewModelProviderElement
    extends AutoDisposeNotifierProviderElement<SettingViewModel, AppThemeType>
    with SettingViewModelRef {
  _SettingViewModelProviderElement(super.provider);

  @override
  BuildContext? get context => (origin as SettingViewModelProvider).context;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
