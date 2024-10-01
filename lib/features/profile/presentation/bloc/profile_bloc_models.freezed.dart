// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) data,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? data,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateData value) data,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileStateDataImplCopyWith<$Res> {
  factory _$$ProfileStateDataImplCopyWith(_$ProfileStateDataImpl value,
          $Res Function(_$ProfileStateDataImpl) then) =
      __$$ProfileStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileStateDataImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateDataImpl>
    implements _$$ProfileStateDataImplCopyWith<$Res> {
  __$$ProfileStateDataImplCopyWithImpl(_$ProfileStateDataImpl _value,
      $Res Function(_$ProfileStateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileStateDataImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ProfileStateDataImpl extends ProfileStateData {
  const _$ProfileStateDataImpl({required this.user}) : super._();

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileState.data(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateDataImplCopyWith<_$ProfileStateDataImpl> get copyWith =>
      __$$ProfileStateDataImplCopyWithImpl<_$ProfileStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserModel user) data,
    required TResult Function() empty,
  }) {
    return data(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? data,
    TResult? Function()? empty,
  }) {
    return data?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? data,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ProfileStateData extends ProfileState {
  const factory ProfileStateData({required final UserModel user}) =
      _$ProfileStateDataImpl;
  const ProfileStateData._() : super._();

  UserModel get user;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileStateDataImplCopyWith<_$ProfileStateDataImpl> get copyWith =>
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
    extends _$ProfileStateCopyWithImpl<$Res, _$EmptyImpl>
    implements _$$EmptyImplCopyWith<$Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl _value, $Res Function(_$EmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EmptyImpl extends _Empty {
  const _$EmptyImpl() : super._();

  @override
  String toString() {
    return 'ProfileState.empty()';
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
    required TResult Function(UserModel user) data,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserModel user)? data,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserModel user)? data,
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
    required TResult Function(ProfileStateData value) data,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateData value)? data,
    TResult? Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateData value)? data,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends ProfileState {
  const factory _Empty() = _$EmptyImpl;
  const _Empty._() : super._();
}

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) updateUser,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? updateUser,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? updateUser,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventInit value) init,
    required TResult Function(ProfileEventUpdateUser value) updateUser,
    required TResult Function(ProfileEventSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventInit value)? init,
    TResult? Function(ProfileEventUpdateUser value)? updateUser,
    TResult? Function(ProfileEventSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventInit value)? init,
    TResult Function(ProfileEventUpdateUser value)? updateUser,
    TResult Function(ProfileEventSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ProfileEventInitImplCopyWith<$Res> {
  factory _$$ProfileEventInitImplCopyWith(_$ProfileEventInitImpl value,
          $Res Function(_$ProfileEventInitImpl) then) =
      __$$ProfileEventInitImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileEventInitImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileEventInitImpl>
    implements _$$ProfileEventInitImplCopyWith<$Res> {
  __$$ProfileEventInitImplCopyWithImpl(_$ProfileEventInitImpl _value,
      $Res Function(_$ProfileEventInitImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileEventInitImpl implements ProfileEventInit {
  const _$ProfileEventInitImpl();

  @override
  String toString() {
    return 'ProfileEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileEventInitImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) updateUser,
    required TResult Function() signOut,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? updateUser,
    TResult? Function()? signOut,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? updateUser,
    TResult Function()? signOut,
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
    required TResult Function(ProfileEventInit value) init,
    required TResult Function(ProfileEventUpdateUser value) updateUser,
    required TResult Function(ProfileEventSignOut value) signOut,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventInit value)? init,
    TResult? Function(ProfileEventUpdateUser value)? updateUser,
    TResult? Function(ProfileEventSignOut value)? signOut,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventInit value)? init,
    TResult Function(ProfileEventUpdateUser value)? updateUser,
    TResult Function(ProfileEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProfileEventInit implements ProfileEvent {
  const factory ProfileEventInit() = _$ProfileEventInitImpl;
}

/// @nodoc
abstract class _$$ProfileEventUpdateUserImplCopyWith<$Res> {
  factory _$$ProfileEventUpdateUserImplCopyWith(
          _$ProfileEventUpdateUserImpl value,
          $Res Function(_$ProfileEventUpdateUserImpl) then) =
      __$$ProfileEventUpdateUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel user});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$ProfileEventUpdateUserImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileEventUpdateUserImpl>
    implements _$$ProfileEventUpdateUserImplCopyWith<$Res> {
  __$$ProfileEventUpdateUserImplCopyWithImpl(
      _$ProfileEventUpdateUserImpl _value,
      $Res Function(_$ProfileEventUpdateUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$ProfileEventUpdateUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$ProfileEventUpdateUserImpl implements ProfileEventUpdateUser {
  const _$ProfileEventUpdateUserImpl(this.user);

  @override
  final UserModel user;

  @override
  String toString() {
    return 'ProfileEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEventUpdateUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileEventUpdateUserImplCopyWith<_$ProfileEventUpdateUserImpl>
      get copyWith => __$$ProfileEventUpdateUserImplCopyWithImpl<
          _$ProfileEventUpdateUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) updateUser,
    required TResult Function() signOut,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? updateUser,
    TResult? Function()? signOut,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? updateUser,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventInit value) init,
    required TResult Function(ProfileEventUpdateUser value) updateUser,
    required TResult Function(ProfileEventSignOut value) signOut,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventInit value)? init,
    TResult? Function(ProfileEventUpdateUser value)? updateUser,
    TResult? Function(ProfileEventSignOut value)? signOut,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventInit value)? init,
    TResult Function(ProfileEventUpdateUser value)? updateUser,
    TResult Function(ProfileEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class ProfileEventUpdateUser implements ProfileEvent {
  const factory ProfileEventUpdateUser(final UserModel user) =
      _$ProfileEventUpdateUserImpl;

  UserModel get user;

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileEventUpdateUserImplCopyWith<_$ProfileEventUpdateUserImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileEventSignOutImplCopyWith<$Res> {
  factory _$$ProfileEventSignOutImplCopyWith(_$ProfileEventSignOutImpl value,
          $Res Function(_$ProfileEventSignOutImpl) then) =
      __$$ProfileEventSignOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileEventSignOutImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ProfileEventSignOutImpl>
    implements _$$ProfileEventSignOutImplCopyWith<$Res> {
  __$$ProfileEventSignOutImplCopyWithImpl(_$ProfileEventSignOutImpl _value,
      $Res Function(_$ProfileEventSignOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProfileEventSignOutImpl implements ProfileEventSignOut {
  const _$ProfileEventSignOutImpl();

  @override
  String toString() {
    return 'ProfileEvent.signOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileEventSignOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(UserModel user) updateUser,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(UserModel user)? updateUser,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(UserModel user)? updateUser,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileEventInit value) init,
    required TResult Function(ProfileEventUpdateUser value) updateUser,
    required TResult Function(ProfileEventSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileEventInit value)? init,
    TResult? Function(ProfileEventUpdateUser value)? updateUser,
    TResult? Function(ProfileEventSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileEventInit value)? init,
    TResult Function(ProfileEventUpdateUser value)? updateUser,
    TResult Function(ProfileEventSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class ProfileEventSignOut implements ProfileEvent {
  const factory ProfileEventSignOut() = _$ProfileEventSignOutImpl;
}

/// @nodoc
mixin _$ProfileSR {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoader value) showLoader,
    required TResult Function(_HideLoader value) hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoader value)? showLoader,
    TResult? Function(_HideLoader value)? hideLoader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoader value)? showLoader,
    TResult Function(_HideLoader value)? hideLoader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSRCopyWith<$Res> {
  factory $ProfileSRCopyWith(ProfileSR value, $Res Function(ProfileSR) then) =
      _$ProfileSRCopyWithImpl<$Res, ProfileSR>;
}

/// @nodoc
class _$ProfileSRCopyWithImpl<$Res, $Val extends ProfileSR>
    implements $ProfileSRCopyWith<$Res> {
  _$ProfileSRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ShowLoaderImplCopyWith<$Res> {
  factory _$$ShowLoaderImplCopyWith(
          _$ShowLoaderImpl value, $Res Function(_$ShowLoaderImpl) then) =
      __$$ShowLoaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ShowLoaderImplCopyWithImpl<$Res>
    extends _$ProfileSRCopyWithImpl<$Res, _$ShowLoaderImpl>
    implements _$$ShowLoaderImplCopyWith<$Res> {
  __$$ShowLoaderImplCopyWithImpl(
      _$ShowLoaderImpl _value, $Res Function(_$ShowLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ShowLoaderImpl implements _ShowLoader {
  const _$ShowLoaderImpl();

  @override
  String toString() {
    return 'ProfileSR.showLoader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ShowLoaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) {
    return showLoader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) {
    return showLoader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) {
    if (showLoader != null) {
      return showLoader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoader value) showLoader,
    required TResult Function(_HideLoader value) hideLoader,
  }) {
    return showLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoader value)? showLoader,
    TResult? Function(_HideLoader value)? hideLoader,
  }) {
    return showLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoader value)? showLoader,
    TResult Function(_HideLoader value)? hideLoader,
    required TResult orElse(),
  }) {
    if (showLoader != null) {
      return showLoader(this);
    }
    return orElse();
  }
}

abstract class _ShowLoader implements ProfileSR {
  const factory _ShowLoader() = _$ShowLoaderImpl;
}

/// @nodoc
abstract class _$$HideLoaderImplCopyWith<$Res> {
  factory _$$HideLoaderImplCopyWith(
          _$HideLoaderImpl value, $Res Function(_$HideLoaderImpl) then) =
      __$$HideLoaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HideLoaderImplCopyWithImpl<$Res>
    extends _$ProfileSRCopyWithImpl<$Res, _$HideLoaderImpl>
    implements _$$HideLoaderImplCopyWith<$Res> {
  __$$HideLoaderImplCopyWithImpl(
      _$HideLoaderImpl _value, $Res Function(_$HideLoaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileSR
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HideLoaderImpl implements _HideLoader {
  const _$HideLoaderImpl();

  @override
  String toString() {
    return 'ProfileSR.hideLoader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HideLoaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() showLoader,
    required TResult Function() hideLoader,
  }) {
    return hideLoader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? showLoader,
    TResult? Function()? hideLoader,
  }) {
    return hideLoader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? showLoader,
    TResult Function()? hideLoader,
    required TResult orElse(),
  }) {
    if (hideLoader != null) {
      return hideLoader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowLoader value) showLoader,
    required TResult Function(_HideLoader value) hideLoader,
  }) {
    return hideLoader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ShowLoader value)? showLoader,
    TResult? Function(_HideLoader value)? hideLoader,
  }) {
    return hideLoader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowLoader value)? showLoader,
    TResult Function(_HideLoader value)? hideLoader,
    required TResult orElse(),
  }) {
    if (hideLoader != null) {
      return hideLoader(this);
    }
    return orElse();
  }
}

abstract class _HideLoader implements ProfileSR {
  const factory _HideLoader() = _$HideLoaderImpl;
}
