// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() timeout,
    required TResult Function() connectionFailure,
    required TResult Function() emailAlreayInUsed,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? timeout,
    TResult? Function()? connectionFailure,
    TResult? Function()? emailAlreayInUsed,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? timeout,
    TResult Function()? connectionFailure,
    TResult Function()? emailAlreayInUsed,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeOut value) timeout,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(EmailAlreayInUsed value) emailAlreayInUsed,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeOut value)? timeout,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeOut value)? timeout,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerErrorCopyWith<$Res> {
  factory _$$ServerErrorCopyWith(
          _$ServerError value, $Res Function(_$ServerError) then) =
      __$$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerError>
    implements _$$ServerErrorCopyWith<$Res> {
  __$$ServerErrorCopyWithImpl(
      _$ServerError _value, $Res Function(_$ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerError with DiagnosticableTreeMixin implements ServerError {
  const _$ServerError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.serverError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.serverError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() timeout,
    required TResult Function() connectionFailure,
    required TResult Function() emailAlreayInUsed,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? timeout,
    TResult? Function()? connectionFailure,
    TResult? Function()? emailAlreayInUsed,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? timeout,
    TResult Function()? connectionFailure,
    TResult Function()? emailAlreayInUsed,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeOut value) timeout,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(EmailAlreayInUsed value) emailAlreayInUsed,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeOut value)? timeout,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeOut value)? timeout,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements Failure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class _$$TimeOutCopyWith<$Res> {
  factory _$$TimeOutCopyWith(_$TimeOut value, $Res Function(_$TimeOut) then) =
      __$$TimeOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeOutCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TimeOut>
    implements _$$TimeOutCopyWith<$Res> {
  __$$TimeOutCopyWithImpl(_$TimeOut _value, $Res Function(_$TimeOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeOut with DiagnosticableTreeMixin implements TimeOut {
  const _$TimeOut();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.timeout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.timeout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() timeout,
    required TResult Function() connectionFailure,
    required TResult Function() emailAlreayInUsed,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? timeout,
    TResult? Function()? connectionFailure,
    TResult? Function()? emailAlreayInUsed,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? timeout,
    TResult Function()? connectionFailure,
    TResult Function()? emailAlreayInUsed,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeOut value) timeout,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(EmailAlreayInUsed value) emailAlreayInUsed,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeOut value)? timeout,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeOut value)? timeout,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeOut implements Failure {
  const factory TimeOut() = _$TimeOut;
}

/// @nodoc
abstract class _$$ConnectionFailureCopyWith<$Res> {
  factory _$$ConnectionFailureCopyWith(
          _$ConnectionFailure value, $Res Function(_$ConnectionFailure) then) =
      __$$ConnectionFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ConnectionFailure>
    implements _$$ConnectionFailureCopyWith<$Res> {
  __$$ConnectionFailureCopyWithImpl(
      _$ConnectionFailure _value, $Res Function(_$ConnectionFailure) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectionFailure
    with DiagnosticableTreeMixin
    implements ConnectionFailure {
  const _$ConnectionFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.connectionFailure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.connectionFailure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() timeout,
    required TResult Function() connectionFailure,
    required TResult Function() emailAlreayInUsed,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return connectionFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? timeout,
    TResult? Function()? connectionFailure,
    TResult? Function()? emailAlreayInUsed,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return connectionFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? timeout,
    TResult Function()? connectionFailure,
    TResult Function()? emailAlreayInUsed,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeOut value) timeout,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(EmailAlreayInUsed value) emailAlreayInUsed,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return connectionFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeOut value)? timeout,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return connectionFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeOut value)? timeout,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (connectionFailure != null) {
      return connectionFailure(this);
    }
    return orElse();
  }
}

abstract class ConnectionFailure implements Failure {
  const factory ConnectionFailure() = _$ConnectionFailure;
}

/// @nodoc
abstract class _$$EmailAlreayInUsedCopyWith<$Res> {
  factory _$$EmailAlreayInUsedCopyWith(
          _$EmailAlreayInUsed value, $Res Function(_$EmailAlreayInUsed) then) =
      __$$EmailAlreayInUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlreayInUsedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$EmailAlreayInUsed>
    implements _$$EmailAlreayInUsedCopyWith<$Res> {
  __$$EmailAlreayInUsedCopyWithImpl(
      _$EmailAlreayInUsed _value, $Res Function(_$EmailAlreayInUsed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlreayInUsed
    with DiagnosticableTreeMixin
    implements EmailAlreayInUsed {
  const _$EmailAlreayInUsed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.emailAlreayInUsed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'Failure.emailAlreayInUsed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlreayInUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() timeout,
    required TResult Function() connectionFailure,
    required TResult Function() emailAlreayInUsed,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return emailAlreayInUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? timeout,
    TResult? Function()? connectionFailure,
    TResult? Function()? emailAlreayInUsed,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return emailAlreayInUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? timeout,
    TResult Function()? connectionFailure,
    TResult Function()? emailAlreayInUsed,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreayInUsed != null) {
      return emailAlreayInUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeOut value) timeout,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(EmailAlreayInUsed value) emailAlreayInUsed,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return emailAlreayInUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeOut value)? timeout,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return emailAlreayInUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeOut value)? timeout,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (emailAlreayInUsed != null) {
      return emailAlreayInUsed(this);
    }
    return orElse();
  }
}

abstract class EmailAlreayInUsed implements Failure {
  const factory EmailAlreayInUsed() = _$EmailAlreayInUsed;
}

/// @nodoc
abstract class _$$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$$InvalidEmailAndPasswordCombinationCopyWith(
          _$InvalidEmailAndPasswordCombination value,
          $Res Function(_$InvalidEmailAndPasswordCombination) then) =
      __$$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$InvalidEmailAndPasswordCombination>
    implements _$$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  __$$InvalidEmailAndPasswordCombinationCopyWithImpl(
      _$InvalidEmailAndPasswordCombination _value,
      $Res Function(_$InvalidEmailAndPasswordCombination) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailAndPasswordCombination
    with DiagnosticableTreeMixin
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure.invalidEmailAndPasswordCombination()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'Failure.invalidEmailAndPasswordCombination'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() timeout,
    required TResult Function() connectionFailure,
    required TResult Function() emailAlreayInUsed,
    required TResult Function() invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? serverError,
    TResult? Function()? timeout,
    TResult? Function()? connectionFailure,
    TResult? Function()? emailAlreayInUsed,
    TResult? Function()? invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? timeout,
    TResult Function()? connectionFailure,
    TResult Function()? emailAlreayInUsed,
    TResult Function()? invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(TimeOut value) timeout,
    required TResult Function(ConnectionFailure value) connectionFailure,
    required TResult Function(EmailAlreayInUsed value) emailAlreayInUsed,
    required TResult Function(InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerError value)? serverError,
    TResult? Function(TimeOut value)? timeout,
    TResult? Function(ConnectionFailure value)? connectionFailure,
    TResult? Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult? Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
  }) {
    return invalidEmailAndPasswordCombination?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(TimeOut value)? timeout,
    TResult Function(ConnectionFailure value)? connectionFailure,
    TResult Function(EmailAlreayInUsed value)? emailAlreayInUsed,
    TResult Function(InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements Failure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}
