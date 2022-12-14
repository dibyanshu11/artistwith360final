// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() profileButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? profileButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? profileButtonTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(profileButtonTap value) profileButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PhoneChanged value)? phoneChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(profileButtonTap value)? profileButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(profileButtonTap value)? profileButtonTap,
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
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailStr});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailStr = null,
  }) {
    return _then(_$EmailChanged(
      null == emailStr
          ? _value.emailStr
          : emailStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'ProfileEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                other.emailStr == emailStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() profileButtonTap,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? profileButtonTap,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? profileButtonTap,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(profileButtonTap value) profileButtonTap,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PhoneChanged value)? phoneChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(profileButtonTap value)? profileButtonTap,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(profileButtonTap value)? profileButtonTap,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ProfileEvent {
  const factory EmailChanged(final String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String nameStr});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStr = null,
  }) {
    return _then(_$NameChanged(
      null == nameStr
          ? _value.nameStr
          : nameStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged(this.nameStr);

  @override
  final String nameStr;

  @override
  String toString() {
    return 'ProfileEvent.nameChanged(nameStr: $nameStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            (identical(other.nameStr, nameStr) || other.nameStr == nameStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nameStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() profileButtonTap,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? profileButtonTap,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? profileButtonTap,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(nameStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(profileButtonTap value) profileButtonTap,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PhoneChanged value)? phoneChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(profileButtonTap value)? profileButtonTap,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(profileButtonTap value)? profileButtonTap,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements ProfileEvent {
  const factory NameChanged(final String nameStr) = _$NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneChangedCopyWith<$Res> {
  factory _$$PhoneChangedCopyWith(
          _$PhoneChanged value, $Res Function(_$PhoneChanged) then) =
      __$$PhoneChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneStr});
}

/// @nodoc
class __$$PhoneChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PhoneChanged>
    implements _$$PhoneChangedCopyWith<$Res> {
  __$$PhoneChangedCopyWithImpl(
      _$PhoneChanged _value, $Res Function(_$PhoneChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneStr = null,
  }) {
    return _then(_$PhoneChanged(
      null == phoneStr
          ? _value.phoneStr
          : phoneStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneChanged implements PhoneChanged {
  const _$PhoneChanged(this.phoneStr);

  @override
  final String phoneStr;

  @override
  String toString() {
    return 'ProfileEvent.phoneChanged(phoneStr: $phoneStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneChanged &&
            (identical(other.phoneStr, phoneStr) ||
                other.phoneStr == phoneStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneChangedCopyWith<_$PhoneChanged> get copyWith =>
      __$$PhoneChangedCopyWithImpl<_$PhoneChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() profileButtonTap,
  }) {
    return phoneChanged(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? profileButtonTap,
  }) {
    return phoneChanged?.call(phoneStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? profileButtonTap,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(phoneStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(profileButtonTap value) profileButtonTap,
  }) {
    return phoneChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PhoneChanged value)? phoneChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(profileButtonTap value)? profileButtonTap,
  }) {
    return phoneChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(profileButtonTap value)? profileButtonTap,
    required TResult orElse(),
  }) {
    if (phoneChanged != null) {
      return phoneChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneChanged implements ProfileEvent {
  const factory PhoneChanged(final String phoneStr) = _$PhoneChanged;

  String get phoneStr;
  @JsonKey(ignore: true)
  _$$PhoneChangedCopyWith<_$PhoneChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$PasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ProfileEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() profileButtonTap,
  }) {
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? profileButtonTap,
  }) {
    return passwordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? profileButtonTap,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(profileButtonTap value) profileButtonTap,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PhoneChanged value)? phoneChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(profileButtonTap value)? profileButtonTap,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(profileButtonTap value)? profileButtonTap,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements ProfileEvent {
  const factory PasswordChanged(final String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ConfirmPasswordChangedCopyWith<$Res> {
  factory _$$ConfirmPasswordChangedCopyWith(_$ConfirmPasswordChanged value,
          $Res Function(_$ConfirmPasswordChanged) then) =
      __$$ConfirmPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPasswordStr});
}

/// @nodoc
class __$$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$ConfirmPasswordChanged>
    implements _$$ConfirmPasswordChangedCopyWith<$Res> {
  __$$ConfirmPasswordChangedCopyWithImpl(_$ConfirmPasswordChanged _value,
      $Res Function(_$ConfirmPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPasswordStr = null,
  }) {
    return _then(_$ConfirmPasswordChanged(
      null == confirmPasswordStr
          ? _value.confirmPasswordStr
          : confirmPasswordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ConfirmPasswordChanged implements ConfirmPasswordChanged {
  const _$ConfirmPasswordChanged(this.confirmPasswordStr);

  @override
  final String confirmPasswordStr;

  @override
  String toString() {
    return 'ProfileEvent.confirmPasswordChanged(confirmPasswordStr: $confirmPasswordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPasswordChanged &&
            (identical(other.confirmPasswordStr, confirmPasswordStr) ||
                other.confirmPasswordStr == confirmPasswordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPasswordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPasswordChangedCopyWith<_$ConfirmPasswordChanged> get copyWith =>
      __$$ConfirmPasswordChangedCopyWithImpl<_$ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() profileButtonTap,
  }) {
    return confirmPasswordChanged(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? profileButtonTap,
  }) {
    return confirmPasswordChanged?.call(confirmPasswordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? profileButtonTap,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPasswordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(profileButtonTap value) profileButtonTap,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PhoneChanged value)? phoneChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(profileButtonTap value)? profileButtonTap,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(profileButtonTap value)? profileButtonTap,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class ConfirmPasswordChanged implements ProfileEvent {
  const factory ConfirmPasswordChanged(final String confirmPasswordStr) =
      _$ConfirmPasswordChanged;

  String get confirmPasswordStr;
  @JsonKey(ignore: true)
  _$$ConfirmPasswordChangedCopyWith<_$ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$profileButtonTapCopyWith<$Res> {
  factory _$$profileButtonTapCopyWith(
          _$profileButtonTap value, $Res Function(_$profileButtonTap) then) =
      __$$profileButtonTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$profileButtonTapCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$profileButtonTap>
    implements _$$profileButtonTapCopyWith<$Res> {
  __$$profileButtonTapCopyWithImpl(
      _$profileButtonTap _value, $Res Function(_$profileButtonTap) _then)
      : super(_value, _then);
}

/// @nodoc

class _$profileButtonTap implements profileButtonTap {
  const _$profileButtonTap();

  @override
  String toString() {
    return 'ProfileEvent.profileButtonTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$profileButtonTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String phoneStr) phoneChanged,
    required TResult Function(String passwordStr) passwordChanged,
    required TResult Function(String confirmPasswordStr) confirmPasswordChanged,
    required TResult Function() profileButtonTap,
  }) {
    return profileButtonTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String phoneStr)? phoneChanged,
    TResult? Function(String passwordStr)? passwordChanged,
    TResult? Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult? Function()? profileButtonTap,
  }) {
    return profileButtonTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String phoneStr)? phoneChanged,
    TResult Function(String passwordStr)? passwordChanged,
    TResult Function(String confirmPasswordStr)? confirmPasswordChanged,
    TResult Function()? profileButtonTap,
    required TResult orElse(),
  }) {
    if (profileButtonTap != null) {
      return profileButtonTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(PhoneChanged value) phoneChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(profileButtonTap value) profileButtonTap,
  }) {
    return profileButtonTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(PhoneChanged value)? phoneChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(profileButtonTap value)? profileButtonTap,
  }) {
    return profileButtonTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(PhoneChanged value)? phoneChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(profileButtonTap value)? profileButtonTap,
    required TResult orElse(),
  }) {
    if (profileButtonTap != null) {
      return profileButtonTap(this);
    }
    return orElse();
  }
}

abstract class profileButtonTap implements ProfileEvent {
  const factory profileButtonTap() = _$profileButtonTap;
}

/// @nodoc
mixin _$ProfileState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  ConfirmPassword get confirmPassword => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      ConfirmPassword confirmPassword,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$_ProfileStateCopyWith(
          _$_ProfileState value, $Res Function(_$_ProfileState) then) =
      __$$_ProfileStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      ConfirmPassword confirmPassword,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_ProfileStateCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$_ProfileState>
    implements _$$_ProfileStateCopyWith<$Res> {
  __$$_ProfileStateCopyWithImpl(
      _$_ProfileState _value, $Res Function(_$_ProfileState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_ProfileState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: null == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPassword,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMessages,
      required this.confirmPassword,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final ConfirmPassword confirmPassword;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      showErrorMessages,
      confirmPassword,
      isSubmitting,
      authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      __$$_ProfileStateCopyWithImpl<_$_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool showErrorMessages,
      required final ConfirmPassword confirmPassword,
      required final bool isSubmitting,
      required final Option<Either<Failure, Unit>>
          authFailureOrSuccessOption}) = _$_ProfileState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  ConfirmPassword get confirmPassword;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStateCopyWith<_$_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
