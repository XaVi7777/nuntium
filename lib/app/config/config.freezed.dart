// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Config {
  int get cacheTTL => throw _privateConstructorUsedError;
  SectionModel get defaultActiveSection => throw _privateConstructorUsedError;
  int get defaultRecommendationPeriod => throw _privateConstructorUsedError;
  List<SectionModel> get sections => throw _privateConstructorUsedError;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfigCopyWith<Config> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigCopyWith<$Res> {
  factory $ConfigCopyWith(Config value, $Res Function(Config) then) =
      _$ConfigCopyWithImpl<$Res, Config>;
  @useResult
  $Res call(
      {int cacheTTL,
      SectionModel defaultActiveSection,
      int defaultRecommendationPeriod,
      List<SectionModel> sections});

  $SectionModelCopyWith<$Res> get defaultActiveSection;
}

/// @nodoc
class _$ConfigCopyWithImpl<$Res, $Val extends Config>
    implements $ConfigCopyWith<$Res> {
  _$ConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cacheTTL = null,
    Object? defaultActiveSection = null,
    Object? defaultRecommendationPeriod = null,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      cacheTTL: null == cacheTTL
          ? _value.cacheTTL
          : cacheTTL // ignore: cast_nullable_to_non_nullable
              as int,
      defaultActiveSection: null == defaultActiveSection
          ? _value.defaultActiveSection
          : defaultActiveSection // ignore: cast_nullable_to_non_nullable
              as SectionModel,
      defaultRecommendationPeriod: null == defaultRecommendationPeriod
          ? _value.defaultRecommendationPeriod
          : defaultRecommendationPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ) as $Val);
  }

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionModelCopyWith<$Res> get defaultActiveSection {
    return $SectionModelCopyWith<$Res>(_value.defaultActiveSection, (value) {
      return _then(_value.copyWith(defaultActiveSection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfigImplCopyWith<$Res> implements $ConfigCopyWith<$Res> {
  factory _$$ConfigImplCopyWith(
          _$ConfigImpl value, $Res Function(_$ConfigImpl) then) =
      __$$ConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int cacheTTL,
      SectionModel defaultActiveSection,
      int defaultRecommendationPeriod,
      List<SectionModel> sections});

  @override
  $SectionModelCopyWith<$Res> get defaultActiveSection;
}

/// @nodoc
class __$$ConfigImplCopyWithImpl<$Res>
    extends _$ConfigCopyWithImpl<$Res, _$ConfigImpl>
    implements _$$ConfigImplCopyWith<$Res> {
  __$$ConfigImplCopyWithImpl(
      _$ConfigImpl _value, $Res Function(_$ConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cacheTTL = null,
    Object? defaultActiveSection = null,
    Object? defaultRecommendationPeriod = null,
    Object? sections = null,
  }) {
    return _then(_$ConfigImpl(
      cacheTTL: null == cacheTTL
          ? _value.cacheTTL
          : cacheTTL // ignore: cast_nullable_to_non_nullable
              as int,
      defaultActiveSection: null == defaultActiveSection
          ? _value.defaultActiveSection
          : defaultActiveSection // ignore: cast_nullable_to_non_nullable
              as SectionModel,
      defaultRecommendationPeriod: null == defaultRecommendationPeriod
          ? _value.defaultRecommendationPeriod
          : defaultRecommendationPeriod // ignore: cast_nullable_to_non_nullable
              as int,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ));
  }
}

/// @nodoc

class _$ConfigImpl implements _Config {
  const _$ConfigImpl(
      {this.cacheTTL = 3600,
      this.defaultActiveSection =
          const SectionModel(type: 'home', isSelected: true),
      this.defaultRecommendationPeriod = 1,
      final List<SectionModel> sections = const [
        SectionModel(type: 'home', isSelected: true),
        SectionModel(type: 'arts'),
        SectionModel(type: 'automobiles'),
        SectionModel(type: 'books/review'),
        SectionModel(type: 'business'),
        SectionModel(type: 'fashion'),
        SectionModel(type: 'food'),
        SectionModel(type: 'health'),
        SectionModel(type: 'insider'),
        SectionModel(type: 'magazine'),
        SectionModel(type: 'movies'),
        SectionModel(type: 'nyregion'),
        SectionModel(type: 'obituaries'),
        SectionModel(type: 'opinion'),
        SectionModel(type: 'politics'),
        SectionModel(type: 'realestate'),
        SectionModel(type: 'science'),
        SectionModel(type: 'sports'),
        SectionModel(type: 'technology'),
        SectionModel(type: 'theater'),
        SectionModel(type: 't-magazine'),
        SectionModel(type: 'travel'),
        SectionModel(type: 'upshot'),
        SectionModel(type: 'us'),
        SectionModel(type: 'world')
      ]})
      : _sections = sections;

  @override
  @JsonKey()
  final int cacheTTL;
  @override
  @JsonKey()
  final SectionModel defaultActiveSection;
  @override
  @JsonKey()
  final int defaultRecommendationPeriod;
  final List<SectionModel> _sections;
  @override
  @JsonKey()
  List<SectionModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'Config(cacheTTL: $cacheTTL, defaultActiveSection: $defaultActiveSection, defaultRecommendationPeriod: $defaultRecommendationPeriod, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigImpl &&
            (identical(other.cacheTTL, cacheTTL) ||
                other.cacheTTL == cacheTTL) &&
            (identical(other.defaultActiveSection, defaultActiveSection) ||
                other.defaultActiveSection == defaultActiveSection) &&
            (identical(other.defaultRecommendationPeriod,
                    defaultRecommendationPeriod) ||
                other.defaultRecommendationPeriod ==
                    defaultRecommendationPeriod) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cacheTTL,
      defaultActiveSection,
      defaultRecommendationPeriod,
      const DeepCollectionEquality().hash(_sections));

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigImplCopyWith<_$ConfigImpl> get copyWith =>
      __$$ConfigImplCopyWithImpl<_$ConfigImpl>(this, _$identity);
}

abstract class _Config implements Config {
  const factory _Config(
      {final int cacheTTL,
      final SectionModel defaultActiveSection,
      final int defaultRecommendationPeriod,
      final List<SectionModel> sections}) = _$ConfigImpl;

  @override
  int get cacheTTL;
  @override
  SectionModel get defaultActiveSection;
  @override
  int get defaultRecommendationPeriod;
  @override
  List<SectionModel> get sections;

  /// Create a copy of Config
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfigImplCopyWith<_$ConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
