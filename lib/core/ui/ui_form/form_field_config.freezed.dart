// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FormFieldConfig {
  TextFieldConfig? get config => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormFieldType type, TextFieldConfig? config)
        textField,
    required TResult Function(TextFieldConfig? config) searchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormFieldType type, TextFieldConfig? config)? textField,
    TResult? Function(TextFieldConfig? config)? searchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormFieldType type, TextFieldConfig? config)? textField,
    TResult Function(TextFieldConfig? config)? searchField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFormFieldConfig value) textField,
    required TResult Function(SearchFieldConfig value) searchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFormFieldConfig value)? textField,
    TResult? Function(SearchFieldConfig value)? searchField,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFormFieldConfig value)? textField,
    TResult Function(SearchFieldConfig value)? searchField,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormFieldConfigCopyWith<FormFieldConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFieldConfigCopyWith<$Res> {
  factory $FormFieldConfigCopyWith(
          FormFieldConfig value, $Res Function(FormFieldConfig) then) =
      _$FormFieldConfigCopyWithImpl<$Res, FormFieldConfig>;
  @useResult
  $Res call({TextFieldConfig? config});

  $TextFieldConfigCopyWith<$Res>? get config;
}

/// @nodoc
class _$FormFieldConfigCopyWithImpl<$Res, $Val extends FormFieldConfig>
    implements $FormFieldConfigCopyWith<$Res> {
  _$FormFieldConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = freezed,
  }) {
    return _then(_value.copyWith(
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as TextFieldConfig?,
    ) as $Val);
  }

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TextFieldConfigCopyWith<$Res>? get config {
    if (_value.config == null) {
      return null;
    }

    return $TextFieldConfigCopyWith<$Res>(_value.config!, (value) {
      return _then(_value.copyWith(config: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextFormFieldConfigImplCopyWith<$Res>
    implements $FormFieldConfigCopyWith<$Res> {
  factory _$$TextFormFieldConfigImplCopyWith(_$TextFormFieldConfigImpl value,
          $Res Function(_$TextFormFieldConfigImpl) then) =
      __$$TextFormFieldConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormFieldType type, TextFieldConfig? config});

  @override
  $TextFieldConfigCopyWith<$Res>? get config;
}

/// @nodoc
class __$$TextFormFieldConfigImplCopyWithImpl<$Res>
    extends _$FormFieldConfigCopyWithImpl<$Res, _$TextFormFieldConfigImpl>
    implements _$$TextFormFieldConfigImplCopyWith<$Res> {
  __$$TextFormFieldConfigImplCopyWithImpl(_$TextFormFieldConfigImpl _value,
      $Res Function(_$TextFormFieldConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? config = freezed,
  }) {
    return _then(_$TextFormFieldConfigImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FormFieldType,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as TextFieldConfig?,
    ));
  }
}

/// @nodoc

class _$TextFormFieldConfigImpl implements TextFormFieldConfig {
  const _$TextFormFieldConfigImpl({required this.type, this.config});

  @override
  final FormFieldType type;
  @override
  final TextFieldConfig? config;

  @override
  String toString() {
    return 'FormFieldConfig.textField(type: $type, config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextFormFieldConfigImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, config);

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextFormFieldConfigImplCopyWith<_$TextFormFieldConfigImpl> get copyWith =>
      __$$TextFormFieldConfigImplCopyWithImpl<_$TextFormFieldConfigImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormFieldType type, TextFieldConfig? config)
        textField,
    required TResult Function(TextFieldConfig? config) searchField,
  }) {
    return textField(type, config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormFieldType type, TextFieldConfig? config)? textField,
    TResult? Function(TextFieldConfig? config)? searchField,
  }) {
    return textField?.call(type, config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormFieldType type, TextFieldConfig? config)? textField,
    TResult Function(TextFieldConfig? config)? searchField,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(type, config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFormFieldConfig value) textField,
    required TResult Function(SearchFieldConfig value) searchField,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFormFieldConfig value)? textField,
    TResult? Function(SearchFieldConfig value)? searchField,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFormFieldConfig value)? textField,
    TResult Function(SearchFieldConfig value)? searchField,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(this);
    }
    return orElse();
  }
}

abstract class TextFormFieldConfig implements FormFieldConfig {
  const factory TextFormFieldConfig(
      {required final FormFieldType type,
      final TextFieldConfig? config}) = _$TextFormFieldConfigImpl;

  FormFieldType get type;
  @override
  TextFieldConfig? get config;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextFormFieldConfigImplCopyWith<_$TextFormFieldConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchFieldConfigImplCopyWith<$Res>
    implements $FormFieldConfigCopyWith<$Res> {
  factory _$$SearchFieldConfigImplCopyWith(_$SearchFieldConfigImpl value,
          $Res Function(_$SearchFieldConfigImpl) then) =
      __$$SearchFieldConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextFieldConfig? config});

  @override
  $TextFieldConfigCopyWith<$Res>? get config;
}

/// @nodoc
class __$$SearchFieldConfigImplCopyWithImpl<$Res>
    extends _$FormFieldConfigCopyWithImpl<$Res, _$SearchFieldConfigImpl>
    implements _$$SearchFieldConfigImplCopyWith<$Res> {
  __$$SearchFieldConfigImplCopyWithImpl(_$SearchFieldConfigImpl _value,
      $Res Function(_$SearchFieldConfigImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? config = freezed,
  }) {
    return _then(_$SearchFieldConfigImpl(
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as TextFieldConfig?,
    ));
  }
}

/// @nodoc

class _$SearchFieldConfigImpl implements SearchFieldConfig {
  const _$SearchFieldConfigImpl({this.config});

  @override
  final TextFieldConfig? config;

  @override
  String toString() {
    return 'FormFieldConfig.searchField(config: $config)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFieldConfigImpl &&
            (identical(other.config, config) || other.config == config));
  }

  @override
  int get hashCode => Object.hash(runtimeType, config);

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFieldConfigImplCopyWith<_$SearchFieldConfigImpl> get copyWith =>
      __$$SearchFieldConfigImplCopyWithImpl<_$SearchFieldConfigImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FormFieldType type, TextFieldConfig? config)
        textField,
    required TResult Function(TextFieldConfig? config) searchField,
  }) {
    return searchField(config);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FormFieldType type, TextFieldConfig? config)? textField,
    TResult? Function(TextFieldConfig? config)? searchField,
  }) {
    return searchField?.call(config);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FormFieldType type, TextFieldConfig? config)? textField,
    TResult Function(TextFieldConfig? config)? searchField,
    required TResult orElse(),
  }) {
    if (searchField != null) {
      return searchField(config);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextFormFieldConfig value) textField,
    required TResult Function(SearchFieldConfig value) searchField,
  }) {
    return searchField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextFormFieldConfig value)? textField,
    TResult? Function(SearchFieldConfig value)? searchField,
  }) {
    return searchField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextFormFieldConfig value)? textField,
    TResult Function(SearchFieldConfig value)? searchField,
    required TResult orElse(),
  }) {
    if (searchField != null) {
      return searchField(this);
    }
    return orElse();
  }
}

abstract class SearchFieldConfig implements FormFieldConfig {
  const factory SearchFieldConfig({final TextFieldConfig? config}) =
      _$SearchFieldConfigImpl;

  @override
  TextFieldConfig? get config;

  /// Create a copy of FormFieldConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchFieldConfigImplCopyWith<_$SearchFieldConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
