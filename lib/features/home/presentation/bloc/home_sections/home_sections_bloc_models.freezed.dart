// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_sections_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeSectionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SectionModel> sections, SectionModel activeSection)
        data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SectionModel> sections, SectionModel activeSection)?
        data,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SectionModel> sections, SectionModel activeSection)?
        data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSectionsStateData value) data,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSectionsStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSectionsStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSectionsStateCopyWith<$Res> {
  factory $HomeSectionsStateCopyWith(
          HomeSectionsState value, $Res Function(HomeSectionsState) then) =
      _$HomeSectionsStateCopyWithImpl<$Res, HomeSectionsState>;
}

/// @nodoc
class _$HomeSectionsStateCopyWithImpl<$Res, $Val extends HomeSectionsState>
    implements $HomeSectionsStateCopyWith<$Res> {
  _$HomeSectionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSectionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeSectionsStateDataImplCopyWith<$Res> {
  factory _$$HomeSectionsStateDataImplCopyWith(
          _$HomeSectionsStateDataImpl value,
          $Res Function(_$HomeSectionsStateDataImpl) then) =
      __$$HomeSectionsStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SectionModel> sections, SectionModel activeSection});

  $SectionModelCopyWith<$Res> get activeSection;
}

/// @nodoc
class __$$HomeSectionsStateDataImplCopyWithImpl<$Res>
    extends _$HomeSectionsStateCopyWithImpl<$Res, _$HomeSectionsStateDataImpl>
    implements _$$HomeSectionsStateDataImplCopyWith<$Res> {
  __$$HomeSectionsStateDataImplCopyWithImpl(_$HomeSectionsStateDataImpl _value,
      $Res Function(_$HomeSectionsStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSectionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = null,
    Object? activeSection = null,
  }) {
    return _then(_$HomeSectionsStateDataImpl(
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
      activeSection: null == activeSection
          ? _value.activeSection
          : activeSection // ignore: cast_nullable_to_non_nullable
              as SectionModel,
    ));
  }

  /// Create a copy of HomeSectionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionModelCopyWith<$Res> get activeSection {
    return $SectionModelCopyWith<$Res>(_value.activeSection, (value) {
      return _then(_value.copyWith(activeSection: value));
    });
  }
}

/// @nodoc

class _$HomeSectionsStateDataImpl extends HomeSectionsStateData {
  const _$HomeSectionsStateDataImpl(
      {required final List<SectionModel> sections, required this.activeSection})
      : _sections = sections,
        super._();

  final List<SectionModel> _sections;
  @override
  List<SectionModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final SectionModel activeSection;

  @override
  String toString() {
    return 'HomeSectionsState.data(sections: $sections, activeSection: $activeSection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSectionsStateDataImpl &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            (identical(other.activeSection, activeSection) ||
                other.activeSection == activeSection));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_sections), activeSection);

  /// Create a copy of HomeSectionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSectionsStateDataImplCopyWith<_$HomeSectionsStateDataImpl>
      get copyWith => __$$HomeSectionsStateDataImplCopyWithImpl<
          _$HomeSectionsStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SectionModel> sections, SectionModel activeSection)
        data,
    required TResult Function() empty,
  }) {
    return data(sections, activeSection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SectionModel> sections, SectionModel activeSection)?
        data,
    TResult? Function()? empty,
  }) {
    return data?.call(sections, activeSection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SectionModel> sections, SectionModel activeSection)?
        data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(sections, activeSection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSectionsStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSectionsStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSectionsStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeSectionsStateData extends HomeSectionsState {
  const factory HomeSectionsStateData(
      {required final List<SectionModel> sections,
      required final SectionModel activeSection}) = _$HomeSectionsStateDataImpl;
  const HomeSectionsStateData._() : super._();

  List<SectionModel> get sections;
  SectionModel get activeSection;

  /// Create a copy of HomeSectionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSectionsStateDataImplCopyWith<_$HomeSectionsStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$HomeSectionsStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSectionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'HomeSectionsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<SectionModel> sections, SectionModel activeSection)
        data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SectionModel> sections, SectionModel activeSection)?
        data,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SectionModel> sections, SectionModel activeSection)?
        data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSectionsStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSectionsStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSectionsStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends HomeSectionsState {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
mixin _$HomeSectionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) setActiveSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? setActiveSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? setActiveSection,
    TResult Function(List<SectionModel> sections)? updateSections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSectionsEventInit value) init,
    required TResult Function(HomeSectionsEventSetActiveSection value)
        setActiveSection,
    required TResult Function(HomeSectionsEventUpdateSections value)
        updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSectionsEventInit value)? init,
    TResult? Function(HomeSectionsEventSetActiveSection value)?
        setActiveSection,
    TResult? Function(HomeSectionsEventUpdateSections value)? updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSectionsEventInit value)? init,
    TResult Function(HomeSectionsEventSetActiveSection value)? setActiveSection,
    TResult Function(HomeSectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSectionsEventCopyWith<$Res> {
  factory $HomeSectionsEventCopyWith(
          HomeSectionsEvent value, $Res Function(HomeSectionsEvent) then) =
      _$HomeSectionsEventCopyWithImpl<$Res, HomeSectionsEvent>;
}

/// @nodoc
class _$HomeSectionsEventCopyWithImpl<$Res, $Val extends HomeSectionsEvent>
    implements $HomeSectionsEventCopyWith<$Res> {
  _$HomeSectionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeSectionsEventInitImplCopyWith<$Res> {
  factory _$$HomeSectionsEventInitImplCopyWith(
          _$HomeSectionsEventInitImpl value,
          $Res Function(_$HomeSectionsEventInitImpl) then) =
      __$$HomeSectionsEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeSectionsEventInitImplCopyWithImpl<$Res>
    extends _$HomeSectionsEventCopyWithImpl<$Res, _$HomeSectionsEventInitImpl>
    implements _$$HomeSectionsEventInitImplCopyWith<$Res> {
  __$$HomeSectionsEventInitImplCopyWithImpl(_$HomeSectionsEventInitImpl _value,
      $Res Function(_$HomeSectionsEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeSectionsEventInitImpl implements HomeSectionsEventInit {
  const _$HomeSectionsEventInitImpl();

  @override
  String toString() {
    return 'HomeSectionsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSectionsEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) setActiveSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? setActiveSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? setActiveSection,
    TResult Function(List<SectionModel> sections)? updateSections,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSectionsEventInit value) init,
    required TResult Function(HomeSectionsEventSetActiveSection value)
        setActiveSection,
    required TResult Function(HomeSectionsEventUpdateSections value)
        updateSections,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSectionsEventInit value)? init,
    TResult? Function(HomeSectionsEventSetActiveSection value)?
        setActiveSection,
    TResult? Function(HomeSectionsEventUpdateSections value)? updateSections,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSectionsEventInit value)? init,
    TResult Function(HomeSectionsEventSetActiveSection value)? setActiveSection,
    TResult Function(HomeSectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class HomeSectionsEventInit implements HomeSectionsEvent {
  const factory HomeSectionsEventInit() = _$HomeSectionsEventInitImpl;
}

/// @nodoc
abstract class _$$HomeSectionsEventSetActiveSectionImplCopyWith<$Res> {
  factory _$$HomeSectionsEventSetActiveSectionImplCopyWith(
          _$HomeSectionsEventSetActiveSectionImpl value,
          $Res Function(_$HomeSectionsEventSetActiveSectionImpl) then) =
      __$$HomeSectionsEventSetActiveSectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SectionModel section});

  $SectionModelCopyWith<$Res> get section;
}

/// @nodoc
class __$$HomeSectionsEventSetActiveSectionImplCopyWithImpl<$Res>
    extends _$HomeSectionsEventCopyWithImpl<$Res,
        _$HomeSectionsEventSetActiveSectionImpl>
    implements _$$HomeSectionsEventSetActiveSectionImplCopyWith<$Res> {
  __$$HomeSectionsEventSetActiveSectionImplCopyWithImpl(
      _$HomeSectionsEventSetActiveSectionImpl _value,
      $Res Function(_$HomeSectionsEventSetActiveSectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
  }) {
    return _then(_$HomeSectionsEventSetActiveSectionImpl(
      null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as SectionModel,
    ));
  }

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectionModelCopyWith<$Res> get section {
    return $SectionModelCopyWith<$Res>(_value.section, (value) {
      return _then(_value.copyWith(section: value));
    });
  }
}

/// @nodoc

class _$HomeSectionsEventSetActiveSectionImpl
    implements HomeSectionsEventSetActiveSection {
  const _$HomeSectionsEventSetActiveSectionImpl(this.section);

  @override
  final SectionModel section;

  @override
  String toString() {
    return 'HomeSectionsEvent.setActiveSection(section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSectionsEventSetActiveSectionImpl &&
            (identical(other.section, section) || other.section == section));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section);

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSectionsEventSetActiveSectionImplCopyWith<
          _$HomeSectionsEventSetActiveSectionImpl>
      get copyWith => __$$HomeSectionsEventSetActiveSectionImplCopyWithImpl<
          _$HomeSectionsEventSetActiveSectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) setActiveSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) {
    return setActiveSection(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? setActiveSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) {
    return setActiveSection?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? setActiveSection,
    TResult Function(List<SectionModel> sections)? updateSections,
    required TResult orElse(),
  }) {
    if (setActiveSection != null) {
      return setActiveSection(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSectionsEventInit value) init,
    required TResult Function(HomeSectionsEventSetActiveSection value)
        setActiveSection,
    required TResult Function(HomeSectionsEventUpdateSections value)
        updateSections,
  }) {
    return setActiveSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSectionsEventInit value)? init,
    TResult? Function(HomeSectionsEventSetActiveSection value)?
        setActiveSection,
    TResult? Function(HomeSectionsEventUpdateSections value)? updateSections,
  }) {
    return setActiveSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSectionsEventInit value)? init,
    TResult Function(HomeSectionsEventSetActiveSection value)? setActiveSection,
    TResult Function(HomeSectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) {
    if (setActiveSection != null) {
      return setActiveSection(this);
    }
    return orElse();
  }
}

abstract class HomeSectionsEventSetActiveSection implements HomeSectionsEvent {
  const factory HomeSectionsEventSetActiveSection(final SectionModel section) =
      _$HomeSectionsEventSetActiveSectionImpl;

  SectionModel get section;

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSectionsEventSetActiveSectionImplCopyWith<
          _$HomeSectionsEventSetActiveSectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeSectionsEventUpdateSectionsImplCopyWith<$Res> {
  factory _$$HomeSectionsEventUpdateSectionsImplCopyWith(
          _$HomeSectionsEventUpdateSectionsImpl value,
          $Res Function(_$HomeSectionsEventUpdateSectionsImpl) then) =
      __$$HomeSectionsEventUpdateSectionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SectionModel> sections});
}

/// @nodoc
class __$$HomeSectionsEventUpdateSectionsImplCopyWithImpl<$Res>
    extends _$HomeSectionsEventCopyWithImpl<$Res,
        _$HomeSectionsEventUpdateSectionsImpl>
    implements _$$HomeSectionsEventUpdateSectionsImplCopyWith<$Res> {
  __$$HomeSectionsEventUpdateSectionsImplCopyWithImpl(
      _$HomeSectionsEventUpdateSectionsImpl _value,
      $Res Function(_$HomeSectionsEventUpdateSectionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = null,
  }) {
    return _then(_$HomeSectionsEventUpdateSectionsImpl(
      null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ));
  }
}

/// @nodoc

class _$HomeSectionsEventUpdateSectionsImpl
    implements HomeSectionsEventUpdateSections {
  const _$HomeSectionsEventUpdateSectionsImpl(final List<SectionModel> sections)
      : _sections = sections;

  final List<SectionModel> _sections;
  @override
  List<SectionModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'HomeSectionsEvent.updateSections(sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeSectionsEventUpdateSectionsImpl &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sections));

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeSectionsEventUpdateSectionsImplCopyWith<
          _$HomeSectionsEventUpdateSectionsImpl>
      get copyWith => __$$HomeSectionsEventUpdateSectionsImplCopyWithImpl<
          _$HomeSectionsEventUpdateSectionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) setActiveSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) {
    return updateSections(sections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? setActiveSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) {
    return updateSections?.call(sections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? setActiveSection,
    TResult Function(List<SectionModel> sections)? updateSections,
    required TResult orElse(),
  }) {
    if (updateSections != null) {
      return updateSections(sections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeSectionsEventInit value) init,
    required TResult Function(HomeSectionsEventSetActiveSection value)
        setActiveSection,
    required TResult Function(HomeSectionsEventUpdateSections value)
        updateSections,
  }) {
    return updateSections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeSectionsEventInit value)? init,
    TResult? Function(HomeSectionsEventSetActiveSection value)?
        setActiveSection,
    TResult? Function(HomeSectionsEventUpdateSections value)? updateSections,
  }) {
    return updateSections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeSectionsEventInit value)? init,
    TResult Function(HomeSectionsEventSetActiveSection value)? setActiveSection,
    TResult Function(HomeSectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) {
    if (updateSections != null) {
      return updateSections(this);
    }
    return orElse();
  }
}

abstract class HomeSectionsEventUpdateSections implements HomeSectionsEvent {
  const factory HomeSectionsEventUpdateSections(
          final List<SectionModel> sections) =
      _$HomeSectionsEventUpdateSectionsImpl;

  List<SectionModel> get sections;

  /// Create a copy of HomeSectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeSectionsEventUpdateSectionsImplCopyWith<
          _$HomeSectionsEventUpdateSectionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
