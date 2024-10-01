// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sections_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SectionModel> sections) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SectionModel> sections)? data,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SectionModel> sections)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionsStateData value) data,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionsStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionsStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsStateCopyWith<$Res> {
  factory $SectionsStateCopyWith(
          SectionsState value, $Res Function(SectionsState) then) =
      _$SectionsStateCopyWithImpl<$Res, SectionsState>;
}

/// @nodoc
class _$SectionsStateCopyWithImpl<$Res, $Val extends SectionsState>
    implements $SectionsStateCopyWith<$Res> {
  _$SectionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SectionsStateDataImplCopyWith<$Res> {
  factory _$$SectionsStateDataImplCopyWith(_$SectionsStateDataImpl value,
          $Res Function(_$SectionsStateDataImpl) then) =
      __$$SectionsStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SectionModel> sections});
}

/// @nodoc
class __$$SectionsStateDataImplCopyWithImpl<$Res>
    extends _$SectionsStateCopyWithImpl<$Res, _$SectionsStateDataImpl>
    implements _$$SectionsStateDataImplCopyWith<$Res> {
  __$$SectionsStateDataImplCopyWithImpl(_$SectionsStateDataImpl _value,
      $Res Function(_$SectionsStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = null,
  }) {
    return _then(_$SectionsStateDataImpl(
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ));
  }
}

/// @nodoc

class _$SectionsStateDataImpl extends SectionsStateData {
  const _$SectionsStateDataImpl({final List<SectionModel> sections = const []})
      : _sections = sections,
        super._();

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
    return 'SectionsState.data(sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsStateDataImpl &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sections));

  /// Create a copy of SectionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsStateDataImplCopyWith<_$SectionsStateDataImpl> get copyWith =>
      __$$SectionsStateDataImplCopyWithImpl<_$SectionsStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SectionModel> sections) data,
    required TResult Function() empty,
  }) {
    return data(sections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SectionModel> sections)? data,
    TResult? Function()? empty,
  }) {
    return data?.call(sections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SectionModel> sections)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(sections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionsStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionsStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionsStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class SectionsStateData extends SectionsState {
  const factory SectionsStateData({final List<SectionModel> sections}) =
      _$SectionsStateDataImpl;
  const SectionsStateData._() : super._();

  List<SectionModel> get sections;

  /// Create a copy of SectionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionsStateDataImplCopyWith<_$SectionsStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<$Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl value, $Res Function(_$EmptyImpl) then) =
      __$$EmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<$Res>
    extends _$SectionsStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'SectionsState.empty()';
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
    required TResult Function(List<SectionModel> sections) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SectionModel> sections)? data,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SectionModel> sections)? data,
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
    required TResult Function(SectionsStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionsStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionsStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends SectionsState {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
mixin _$SectionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) selectSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? selectSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? selectSection,
    TResult Function(List<SectionModel> sections)? updateSections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionsEventInit value) init,
    required TResult Function(SectionsEventSelectSection value) selectSection,
    required TResult Function(SectionsEventUpdateSections value) updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionsEventInit value)? init,
    TResult? Function(SectionsEventSelectSection value)? selectSection,
    TResult? Function(SectionsEventUpdateSections value)? updateSections,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionsEventInit value)? init,
    TResult Function(SectionsEventSelectSection value)? selectSection,
    TResult Function(SectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsEventCopyWith<$Res> {
  factory $SectionsEventCopyWith(
          SectionsEvent value, $Res Function(SectionsEvent) then) =
      _$SectionsEventCopyWithImpl<$Res, SectionsEvent>;
}

/// @nodoc
class _$SectionsEventCopyWithImpl<$Res, $Val extends SectionsEvent>
    implements $SectionsEventCopyWith<$Res> {
  _$SectionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SectionsEventInitImplCopyWith<$Res> {
  factory _$$SectionsEventInitImplCopyWith(_$SectionsEventInitImpl value,
          $Res Function(_$SectionsEventInitImpl) then) =
      __$$SectionsEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SectionsEventInitImplCopyWithImpl<$Res>
    extends _$SectionsEventCopyWithImpl<$Res, _$SectionsEventInitImpl>
    implements _$$SectionsEventInitImplCopyWith<$Res> {
  __$$SectionsEventInitImplCopyWithImpl(_$SectionsEventInitImpl _value,
      $Res Function(_$SectionsEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SectionsEventInitImpl implements SectionsEventInit {
  const _$SectionsEventInitImpl();

  @override
  String toString() {
    return 'SectionsEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SectionsEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) selectSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? selectSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? selectSection,
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
    required TResult Function(SectionsEventInit value) init,
    required TResult Function(SectionsEventSelectSection value) selectSection,
    required TResult Function(SectionsEventUpdateSections value) updateSections,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionsEventInit value)? init,
    TResult? Function(SectionsEventSelectSection value)? selectSection,
    TResult? Function(SectionsEventUpdateSections value)? updateSections,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionsEventInit value)? init,
    TResult Function(SectionsEventSelectSection value)? selectSection,
    TResult Function(SectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SectionsEventInit implements SectionsEvent {
  const factory SectionsEventInit() = _$SectionsEventInitImpl;
}

/// @nodoc
abstract class _$$SectionsEventSelectSectionImplCopyWith<$Res> {
  factory _$$SectionsEventSelectSectionImplCopyWith(
          _$SectionsEventSelectSectionImpl value,
          $Res Function(_$SectionsEventSelectSectionImpl) then) =
      __$$SectionsEventSelectSectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SectionModel section});

  $SectionModelCopyWith<$Res> get section;
}

/// @nodoc
class __$$SectionsEventSelectSectionImplCopyWithImpl<$Res>
    extends _$SectionsEventCopyWithImpl<$Res, _$SectionsEventSelectSectionImpl>
    implements _$$SectionsEventSelectSectionImplCopyWith<$Res> {
  __$$SectionsEventSelectSectionImplCopyWithImpl(
      _$SectionsEventSelectSectionImpl _value,
      $Res Function(_$SectionsEventSelectSectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
  }) {
    return _then(_$SectionsEventSelectSectionImpl(
      null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as SectionModel,
    ));
  }

  /// Create a copy of SectionsEvent
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

class _$SectionsEventSelectSectionImpl implements SectionsEventSelectSection {
  const _$SectionsEventSelectSectionImpl(this.section);

  @override
  final SectionModel section;

  @override
  String toString() {
    return 'SectionsEvent.selectSection(section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsEventSelectSectionImpl &&
            (identical(other.section, section) || other.section == section));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section);

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsEventSelectSectionImplCopyWith<_$SectionsEventSelectSectionImpl>
      get copyWith => __$$SectionsEventSelectSectionImplCopyWithImpl<
          _$SectionsEventSelectSectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) selectSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) {
    return selectSection(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? selectSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) {
    return selectSection?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? selectSection,
    TResult Function(List<SectionModel> sections)? updateSections,
    required TResult orElse(),
  }) {
    if (selectSection != null) {
      return selectSection(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SectionsEventInit value) init,
    required TResult Function(SectionsEventSelectSection value) selectSection,
    required TResult Function(SectionsEventUpdateSections value) updateSections,
  }) {
    return selectSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionsEventInit value)? init,
    TResult? Function(SectionsEventSelectSection value)? selectSection,
    TResult? Function(SectionsEventUpdateSections value)? updateSections,
  }) {
    return selectSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionsEventInit value)? init,
    TResult Function(SectionsEventSelectSection value)? selectSection,
    TResult Function(SectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) {
    if (selectSection != null) {
      return selectSection(this);
    }
    return orElse();
  }
}

abstract class SectionsEventSelectSection implements SectionsEvent {
  const factory SectionsEventSelectSection(final SectionModel section) =
      _$SectionsEventSelectSectionImpl;

  SectionModel get section;

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionsEventSelectSectionImplCopyWith<_$SectionsEventSelectSectionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SectionsEventUpdateSectionsImplCopyWith<$Res> {
  factory _$$SectionsEventUpdateSectionsImplCopyWith(
          _$SectionsEventUpdateSectionsImpl value,
          $Res Function(_$SectionsEventUpdateSectionsImpl) then) =
      __$$SectionsEventUpdateSectionsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SectionModel> sections});
}

/// @nodoc
class __$$SectionsEventUpdateSectionsImplCopyWithImpl<$Res>
    extends _$SectionsEventCopyWithImpl<$Res, _$SectionsEventUpdateSectionsImpl>
    implements _$$SectionsEventUpdateSectionsImplCopyWith<$Res> {
  __$$SectionsEventUpdateSectionsImplCopyWithImpl(
      _$SectionsEventUpdateSectionsImpl _value,
      $Res Function(_$SectionsEventUpdateSectionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = null,
  }) {
    return _then(_$SectionsEventUpdateSectionsImpl(
      null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ));
  }
}

/// @nodoc

class _$SectionsEventUpdateSectionsImpl implements SectionsEventUpdateSections {
  const _$SectionsEventUpdateSectionsImpl(final List<SectionModel> sections)
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
    return 'SectionsEvent.updateSections(sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionsEventUpdateSectionsImpl &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sections));

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionsEventUpdateSectionsImplCopyWith<_$SectionsEventUpdateSectionsImpl>
      get copyWith => __$$SectionsEventUpdateSectionsImplCopyWithImpl<
          _$SectionsEventUpdateSectionsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(SectionModel section) selectSection,
    required TResult Function(List<SectionModel> sections) updateSections,
  }) {
    return updateSections(sections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(SectionModel section)? selectSection,
    TResult? Function(List<SectionModel> sections)? updateSections,
  }) {
    return updateSections?.call(sections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(SectionModel section)? selectSection,
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
    required TResult Function(SectionsEventInit value) init,
    required TResult Function(SectionsEventSelectSection value) selectSection,
    required TResult Function(SectionsEventUpdateSections value) updateSections,
  }) {
    return updateSections(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SectionsEventInit value)? init,
    TResult? Function(SectionsEventSelectSection value)? selectSection,
    TResult? Function(SectionsEventUpdateSections value)? updateSections,
  }) {
    return updateSections?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SectionsEventInit value)? init,
    TResult Function(SectionsEventSelectSection value)? selectSection,
    TResult Function(SectionsEventUpdateSections value)? updateSections,
    required TResult orElse(),
  }) {
    if (updateSections != null) {
      return updateSections(this);
    }
    return orElse();
  }
}

abstract class SectionsEventUpdateSections implements SectionsEvent {
  const factory SectionsEventUpdateSections(final List<SectionModel> sections) =
      _$SectionsEventUpdateSectionsImpl;

  List<SectionModel> get sections;

  /// Create a copy of SectionsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionsEventUpdateSectionsImplCopyWith<_$SectionsEventUpdateSectionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
