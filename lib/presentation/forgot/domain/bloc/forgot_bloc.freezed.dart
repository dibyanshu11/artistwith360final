// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forgot_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() verifyButtonTapped,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() passwordButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function()? verifyButtonTapped,
    TResult? Function(String passwordStr)? newPasswordChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? passwordButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? verifyButtonTapped,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? passwordButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(VerifyButtonTapped value) verifyButtonTapped,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(PasswordButtonTapped value) passwordButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult? Function(NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(OtpChanged value)? otpChanged,
    TResult? Function(PasswordButtonTapped value)? passwordButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(PasswordButtonTapped value)? passwordButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotEventCopyWith<$Res> {
  factory $ForgotEventCopyWith(
          ForgotEvent value, $Res Function(ForgotEvent) then) =
      _$ForgotEventCopyWithImpl<$Res, ForgotEvent>;
}

/// @nodoc
class _$ForgotEventCopyWithImpl<$Res, $Val extends ForgotEvent>
    implements $ForgotEventCopyWith<$Res> {
  _$ForgotEventCopyWithImpl(this._value, this._then);

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
    extends _$ForgotEventCopyWithImpl<$Res, _$EmailChanged>
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
    return 'ForgotEvent.emailChanged(emailStr: $emailStr)';
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
    required TResult Function() verifyButtonTapped,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() passwordButtonTapped,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function()? verifyButtonTapped,
    TResult? Function(String passwordStr)? newPasswordChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? passwordButtonTapped,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? verifyButtonTapped,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? passwordButtonTapped,
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
    required TResult Function(VerifyButtonTapped value) verifyButtonTapped,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(PasswordButtonTapped value) passwordButtonTapped,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult? Function(NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(OtpChanged value)? otpChanged,
    TResult? Function(PasswordButtonTapped value)? passwordButtonTapped,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(PasswordButtonTapped value)? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements ForgotEvent {
  const factory EmailChanged(final String emailStr) = _$EmailChanged;

  String get emailStr;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyButtonTappedCopyWith<$Res> {
  factory _$$VerifyButtonTappedCopyWith(_$VerifyButtonTapped value,
          $Res Function(_$VerifyButtonTapped) then) =
      __$$VerifyButtonTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerifyButtonTappedCopyWithImpl<$Res>
    extends _$ForgotEventCopyWithImpl<$Res, _$VerifyButtonTapped>
    implements _$$VerifyButtonTappedCopyWith<$Res> {
  __$$VerifyButtonTappedCopyWithImpl(
      _$VerifyButtonTapped _value, $Res Function(_$VerifyButtonTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$VerifyButtonTapped implements VerifyButtonTapped {
  const _$VerifyButtonTapped();

  @override
  String toString() {
    return 'ForgotEvent.verifyButtonTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerifyButtonTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() verifyButtonTapped,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() passwordButtonTapped,
  }) {
    return verifyButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function()? verifyButtonTapped,
    TResult? Function(String passwordStr)? newPasswordChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? passwordButtonTapped,
  }) {
    return verifyButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? verifyButtonTapped,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (verifyButtonTapped != null) {
      return verifyButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(VerifyButtonTapped value) verifyButtonTapped,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(PasswordButtonTapped value) passwordButtonTapped,
  }) {
    return verifyButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult? Function(NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(OtpChanged value)? otpChanged,
    TResult? Function(PasswordButtonTapped value)? passwordButtonTapped,
  }) {
    return verifyButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(PasswordButtonTapped value)? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (verifyButtonTapped != null) {
      return verifyButtonTapped(this);
    }
    return orElse();
  }
}

abstract class VerifyButtonTapped implements ForgotEvent {
  const factory VerifyButtonTapped() = _$VerifyButtonTapped;
}

/// @nodoc
abstract class _$$NewPasswordChangedCopyWith<$Res> {
  factory _$$NewPasswordChangedCopyWith(_$NewPasswordChanged value,
          $Res Function(_$NewPasswordChanged) then) =
      __$$NewPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordStr});
}

/// @nodoc
class __$$NewPasswordChangedCopyWithImpl<$Res>
    extends _$ForgotEventCopyWithImpl<$Res, _$NewPasswordChanged>
    implements _$$NewPasswordChangedCopyWith<$Res> {
  __$$NewPasswordChangedCopyWithImpl(
      _$NewPasswordChanged _value, $Res Function(_$NewPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordStr = null,
  }) {
    return _then(_$NewPasswordChanged(
      null == passwordStr
          ? _value.passwordStr
          : passwordStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewPasswordChanged implements NewPasswordChanged {
  const _$NewPasswordChanged(this.passwordStr);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'ForgotEvent.newPasswordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                other.passwordStr == passwordStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPasswordChangedCopyWith<_$NewPasswordChanged> get copyWith =>
      __$$NewPasswordChangedCopyWithImpl<_$NewPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() verifyButtonTapped,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() passwordButtonTapped,
  }) {
    return newPasswordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function()? verifyButtonTapped,
    TResult? Function(String passwordStr)? newPasswordChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? passwordButtonTapped,
  }) {
    return newPasswordChanged?.call(passwordStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? verifyButtonTapped,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(VerifyButtonTapped value) verifyButtonTapped,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(PasswordButtonTapped value) passwordButtonTapped,
  }) {
    return newPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult? Function(NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(OtpChanged value)? otpChanged,
    TResult? Function(PasswordButtonTapped value)? passwordButtonTapped,
  }) {
    return newPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(PasswordButtonTapped value)? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (newPasswordChanged != null) {
      return newPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class NewPasswordChanged implements ForgotEvent {
  const factory NewPasswordChanged(final String passwordStr) =
      _$NewPasswordChanged;

  String get passwordStr;
  @JsonKey(ignore: true)
  _$$NewPasswordChangedCopyWith<_$NewPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpChangedCopyWith<$Res> {
  factory _$$OtpChangedCopyWith(
          _$OtpChanged value, $Res Function(_$OtpChanged) then) =
      __$$OtpChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpStr});
}

/// @nodoc
class __$$OtpChangedCopyWithImpl<$Res>
    extends _$ForgotEventCopyWithImpl<$Res, _$OtpChanged>
    implements _$$OtpChangedCopyWith<$Res> {
  __$$OtpChangedCopyWithImpl(
      _$OtpChanged _value, $Res Function(_$OtpChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpStr = null,
  }) {
    return _then(_$OtpChanged(
      null == otpStr
          ? _value.otpStr
          : otpStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpChanged implements OtpChanged {
  const _$OtpChanged(this.otpStr);

  @override
  final String otpStr;

  @override
  String toString() {
    return 'ForgotEvent.otpChanged(otpStr: $otpStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpChanged &&
            (identical(other.otpStr, otpStr) || other.otpStr == otpStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpChangedCopyWith<_$OtpChanged> get copyWith =>
      __$$OtpChangedCopyWithImpl<_$OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() verifyButtonTapped,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() passwordButtonTapped,
  }) {
    return otpChanged(otpStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function()? verifyButtonTapped,
    TResult? Function(String passwordStr)? newPasswordChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? passwordButtonTapped,
  }) {
    return otpChanged?.call(otpStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? verifyButtonTapped,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otpStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(VerifyButtonTapped value) verifyButtonTapped,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(PasswordButtonTapped value) passwordButtonTapped,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult? Function(NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(OtpChanged value)? otpChanged,
    TResult? Function(PasswordButtonTapped value)? passwordButtonTapped,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(PasswordButtonTapped value)? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class OtpChanged implements ForgotEvent {
  const factory OtpChanged(final String otpStr) = _$OtpChanged;

  String get otpStr;
  @JsonKey(ignore: true)
  _$$OtpChangedCopyWith<_$OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordButtonTappedCopyWith<$Res> {
  factory _$$PasswordButtonTappedCopyWith(_$PasswordButtonTapped value,
          $Res Function(_$PasswordButtonTapped) then) =
      __$$PasswordButtonTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordButtonTappedCopyWithImpl<$Res>
    extends _$ForgotEventCopyWithImpl<$Res, _$PasswordButtonTapped>
    implements _$$PasswordButtonTappedCopyWith<$Res> {
  __$$PasswordButtonTappedCopyWithImpl(_$PasswordButtonTapped _value,
      $Res Function(_$PasswordButtonTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordButtonTapped implements PasswordButtonTapped {
  const _$PasswordButtonTapped();

  @override
  String toString() {
    return 'ForgotEvent.passwordButtonTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PasswordButtonTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function() verifyButtonTapped,
    required TResult Function(String passwordStr) newPasswordChanged,
    required TResult Function(String otpStr) otpChanged,
    required TResult Function() passwordButtonTapped,
  }) {
    return passwordButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function()? verifyButtonTapped,
    TResult? Function(String passwordStr)? newPasswordChanged,
    TResult? Function(String otpStr)? otpChanged,
    TResult? Function()? passwordButtonTapped,
  }) {
    return passwordButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function()? verifyButtonTapped,
    TResult Function(String passwordStr)? newPasswordChanged,
    TResult Function(String otpStr)? otpChanged,
    TResult Function()? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (passwordButtonTapped != null) {
      return passwordButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(VerifyButtonTapped value) verifyButtonTapped,
    required TResult Function(NewPasswordChanged value) newPasswordChanged,
    required TResult Function(OtpChanged value) otpChanged,
    required TResult Function(PasswordButtonTapped value) passwordButtonTapped,
  }) {
    return passwordButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult? Function(NewPasswordChanged value)? newPasswordChanged,
    TResult? Function(OtpChanged value)? otpChanged,
    TResult? Function(PasswordButtonTapped value)? passwordButtonTapped,
  }) {
    return passwordButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(VerifyButtonTapped value)? verifyButtonTapped,
    TResult Function(NewPasswordChanged value)? newPasswordChanged,
    TResult Function(OtpChanged value)? otpChanged,
    TResult Function(PasswordButtonTapped value)? passwordButtonTapped,
    required TResult orElse(),
  }) {
    if (passwordButtonTapped != null) {
      return passwordButtonTapped(this);
    }
    return orElse();
  }
}

abstract class PasswordButtonTapped implements ForgotEvent {
  const factory PasswordButtonTapped() = _$PasswordButtonTapped;
}

/// @nodoc
mixin _$ForgotState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotStateCopyWith<ForgotState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotStateCopyWith<$Res> {
  factory $ForgotStateCopyWith(
          ForgotState value, $Res Function(ForgotState) then) =
      _$ForgotStateCopyWithImpl<$Res, ForgotState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$ForgotStateCopyWithImpl<$Res, $Val extends ForgotState>
    implements $ForgotStateCopyWith<$Res> {
  _$ForgotStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_ForgotStateCopyWith<$Res>
    implements $ForgotStateCopyWith<$Res> {
  factory _$$_ForgotStateCopyWith(
          _$_ForgotState value, $Res Function(_$_ForgotState) then) =
      __$$_ForgotStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_ForgotStateCopyWithImpl<$Res>
    extends _$ForgotStateCopyWithImpl<$Res, _$_ForgotState>
    implements _$$_ForgotStateCopyWith<$Res> {
  __$$_ForgotStateCopyWithImpl(
      _$_ForgotState _value, $Res Function(_$_ForgotState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_ForgotState(
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

class _$_ForgotState implements _ForgotState {
  const _$_ForgotState(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ForgotState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password,
      showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotStateCopyWith<_$_ForgotState> get copyWith =>
      __$$_ForgotStateCopyWithImpl<_$_ForgotState>(this, _$identity);
}

abstract class _ForgotState implements ForgotState {
  const factory _ForgotState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<Failure, Unit>>
          authFailureOrSuccessOption}) = _$_ForgotState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotStateCopyWith<_$_ForgotState> get copyWith =>
      throw _privateConstructorUsedError;
}
