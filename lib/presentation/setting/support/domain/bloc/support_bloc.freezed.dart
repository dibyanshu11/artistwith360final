// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'support_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SupportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String reasionStr) reasionChanged,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() reportButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String reasionStr)? reasionChanged,
    TResult? Function(String messageStr)? messageChanged,
    TResult? Function()? reportButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String reasionStr)? reasionChanged,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? reportButtonTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ReasionChanged value) reasionChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(ReportButtonTap value) reportButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ReasionChanged value)? reasionChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(ReportButtonTap value)? reportButtonTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ReasionChanged value)? reasionChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(ReportButtonTap value)? reportButtonTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportEventCopyWith<$Res> {
  factory $SupportEventCopyWith(
          SupportEvent value, $Res Function(SupportEvent) then) =
      _$SupportEventCopyWithImpl<$Res, SupportEvent>;
}

/// @nodoc
class _$SupportEventCopyWithImpl<$Res, $Val extends SupportEvent>
    implements $SupportEventCopyWith<$Res> {
  _$SupportEventCopyWithImpl(this._value, this._then);

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
    extends _$SupportEventCopyWithImpl<$Res, _$EmailChanged>
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
    return 'SupportEvent.emailChanged(emailStr: $emailStr)';
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
    required TResult Function(String reasionStr) reasionChanged,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() reportButtonTap,
  }) {
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String reasionStr)? reasionChanged,
    TResult? Function(String messageStr)? messageChanged,
    TResult? Function()? reportButtonTap,
  }) {
    return emailChanged?.call(emailStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String reasionStr)? reasionChanged,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? reportButtonTap,
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
    required TResult Function(ReasionChanged value) reasionChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(ReportButtonTap value) reportButtonTap,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ReasionChanged value)? reasionChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(ReportButtonTap value)? reportButtonTap,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ReasionChanged value)? reasionChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(ReportButtonTap value)? reportButtonTap,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SupportEvent {
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
    extends _$SupportEventCopyWithImpl<$Res, _$NameChanged>
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
    return 'SupportEvent.nameChanged(nameStr: $nameStr)';
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
    required TResult Function(String reasionStr) reasionChanged,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() reportButtonTap,
  }) {
    return nameChanged(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String reasionStr)? reasionChanged,
    TResult? Function(String messageStr)? messageChanged,
    TResult? Function()? reportButtonTap,
  }) {
    return nameChanged?.call(nameStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String reasionStr)? reasionChanged,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? reportButtonTap,
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
    required TResult Function(ReasionChanged value) reasionChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(ReportButtonTap value) reportButtonTap,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ReasionChanged value)? reasionChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(ReportButtonTap value)? reportButtonTap,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ReasionChanged value)? reasionChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(ReportButtonTap value)? reportButtonTap,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements SupportEvent {
  const factory NameChanged(final String nameStr) = _$NameChanged;

  String get nameStr;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReasionChangedCopyWith<$Res> {
  factory _$$ReasionChangedCopyWith(
          _$ReasionChanged value, $Res Function(_$ReasionChanged) then) =
      __$$ReasionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String reasionStr});
}

/// @nodoc
class __$$ReasionChangedCopyWithImpl<$Res>
    extends _$SupportEventCopyWithImpl<$Res, _$ReasionChanged>
    implements _$$ReasionChangedCopyWith<$Res> {
  __$$ReasionChangedCopyWithImpl(
      _$ReasionChanged _value, $Res Function(_$ReasionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasionStr = null,
  }) {
    return _then(_$ReasionChanged(
      null == reasionStr
          ? _value.reasionStr
          : reasionStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReasionChanged implements ReasionChanged {
  const _$ReasionChanged(this.reasionStr);

  @override
  final String reasionStr;

  @override
  String toString() {
    return 'SupportEvent.reasionChanged(reasionStr: $reasionStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReasionChanged &&
            (identical(other.reasionStr, reasionStr) ||
                other.reasionStr == reasionStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reasionStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReasionChangedCopyWith<_$ReasionChanged> get copyWith =>
      __$$ReasionChangedCopyWithImpl<_$ReasionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String reasionStr) reasionChanged,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() reportButtonTap,
  }) {
    return reasionChanged(reasionStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String reasionStr)? reasionChanged,
    TResult? Function(String messageStr)? messageChanged,
    TResult? Function()? reportButtonTap,
  }) {
    return reasionChanged?.call(reasionStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String reasionStr)? reasionChanged,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? reportButtonTap,
    required TResult orElse(),
  }) {
    if (reasionChanged != null) {
      return reasionChanged(reasionStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ReasionChanged value) reasionChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(ReportButtonTap value) reportButtonTap,
  }) {
    return reasionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ReasionChanged value)? reasionChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(ReportButtonTap value)? reportButtonTap,
  }) {
    return reasionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ReasionChanged value)? reasionChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(ReportButtonTap value)? reportButtonTap,
    required TResult orElse(),
  }) {
    if (reasionChanged != null) {
      return reasionChanged(this);
    }
    return orElse();
  }
}

abstract class ReasionChanged implements SupportEvent {
  const factory ReasionChanged(final String reasionStr) = _$ReasionChanged;

  String get reasionStr;
  @JsonKey(ignore: true)
  _$$ReasionChangedCopyWith<_$ReasionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageChangedCopyWith<$Res> {
  factory _$$MessageChangedCopyWith(
          _$MessageChanged value, $Res Function(_$MessageChanged) then) =
      __$$MessageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String messageStr});
}

/// @nodoc
class __$$MessageChangedCopyWithImpl<$Res>
    extends _$SupportEventCopyWithImpl<$Res, _$MessageChanged>
    implements _$$MessageChangedCopyWith<$Res> {
  __$$MessageChangedCopyWithImpl(
      _$MessageChanged _value, $Res Function(_$MessageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageStr = null,
  }) {
    return _then(_$MessageChanged(
      null == messageStr
          ? _value.messageStr
          : messageStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MessageChanged implements MessageChanged {
  const _$MessageChanged(this.messageStr);

  @override
  final String messageStr;

  @override
  String toString() {
    return 'SupportEvent.messageChanged(messageStr: $messageStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageChanged &&
            (identical(other.messageStr, messageStr) ||
                other.messageStr == messageStr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageStr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
      __$$MessageChangedCopyWithImpl<_$MessageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String reasionStr) reasionChanged,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() reportButtonTap,
  }) {
    return messageChanged(messageStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String reasionStr)? reasionChanged,
    TResult? Function(String messageStr)? messageChanged,
    TResult? Function()? reportButtonTap,
  }) {
    return messageChanged?.call(messageStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String reasionStr)? reasionChanged,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? reportButtonTap,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(messageStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ReasionChanged value) reasionChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(ReportButtonTap value) reportButtonTap,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ReasionChanged value)? reasionChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(ReportButtonTap value)? reportButtonTap,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ReasionChanged value)? reasionChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(ReportButtonTap value)? reportButtonTap,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class MessageChanged implements SupportEvent {
  const factory MessageChanged(final String messageStr) = _$MessageChanged;

  String get messageStr;
  @JsonKey(ignore: true)
  _$$MessageChangedCopyWith<_$MessageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReportButtonTapCopyWith<$Res> {
  factory _$$ReportButtonTapCopyWith(
          _$ReportButtonTap value, $Res Function(_$ReportButtonTap) then) =
      __$$ReportButtonTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReportButtonTapCopyWithImpl<$Res>
    extends _$SupportEventCopyWithImpl<$Res, _$ReportButtonTap>
    implements _$$ReportButtonTapCopyWith<$Res> {
  __$$ReportButtonTapCopyWithImpl(
      _$ReportButtonTap _value, $Res Function(_$ReportButtonTap) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReportButtonTap implements ReportButtonTap {
  const _$ReportButtonTap();

  @override
  String toString() {
    return 'SupportEvent.reportButtonTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReportButtonTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailStr) emailChanged,
    required TResult Function(String nameStr) nameChanged,
    required TResult Function(String reasionStr) reasionChanged,
    required TResult Function(String messageStr) messageChanged,
    required TResult Function() reportButtonTap,
  }) {
    return reportButtonTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailStr)? emailChanged,
    TResult? Function(String nameStr)? nameChanged,
    TResult? Function(String reasionStr)? reasionChanged,
    TResult? Function(String messageStr)? messageChanged,
    TResult? Function()? reportButtonTap,
  }) {
    return reportButtonTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailStr)? emailChanged,
    TResult Function(String nameStr)? nameChanged,
    TResult Function(String reasionStr)? reasionChanged,
    TResult Function(String messageStr)? messageChanged,
    TResult Function()? reportButtonTap,
    required TResult orElse(),
  }) {
    if (reportButtonTap != null) {
      return reportButtonTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(ReasionChanged value) reasionChanged,
    required TResult Function(MessageChanged value) messageChanged,
    required TResult Function(ReportButtonTap value) reportButtonTap,
  }) {
    return reportButtonTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(ReasionChanged value)? reasionChanged,
    TResult? Function(MessageChanged value)? messageChanged,
    TResult? Function(ReportButtonTap value)? reportButtonTap,
  }) {
    return reportButtonTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(ReasionChanged value)? reasionChanged,
    TResult Function(MessageChanged value)? messageChanged,
    TResult Function(ReportButtonTap value)? reportButtonTap,
    required TResult orElse(),
  }) {
    if (reportButtonTap != null) {
      return reportButtonTap(this);
    }
    return orElse();
  }
}

abstract class ReportButtonTap implements SupportEvent {
  const factory ReportButtonTap() = _$ReportButtonTap;
}

/// @nodoc
mixin _$SupportState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  MessageValidator get messageValidator => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupportStateCopyWith<SupportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupportStateCopyWith<$Res> {
  factory $SupportStateCopyWith(
          SupportState value, $Res Function(SupportState) then) =
      _$SupportStateCopyWithImpl<$Res, SupportState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      MessageValidator messageValidator,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SupportStateCopyWithImpl<$Res, $Val extends SupportState>
    implements $SupportStateCopyWith<$Res> {
  _$SupportStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? messageValidator = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      messageValidator: null == messageValidator
          ? _value.messageValidator
          : messageValidator // ignore: cast_nullable_to_non_nullable
              as MessageValidator,
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
abstract class _$$_SupportStateCopyWith<$Res>
    implements $SupportStateCopyWith<$Res> {
  factory _$$_SupportStateCopyWith(
          _$_SupportState value, $Res Function(_$_SupportState) then) =
      __$$_SupportStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      MessageValidator messageValidator,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_SupportStateCopyWithImpl<$Res>
    extends _$SupportStateCopyWithImpl<$Res, _$_SupportState>
    implements _$$_SupportStateCopyWith<$Res> {
  __$$_SupportStateCopyWithImpl(
      _$_SupportState _value, $Res Function(_$_SupportState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? messageValidator = null,
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_SupportState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      messageValidator: null == messageValidator
          ? _value.messageValidator
          : messageValidator // ignore: cast_nullable_to_non_nullable
              as MessageValidator,
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

class _$_SupportState implements _SupportState {
  const _$_SupportState(
      {required this.emailAddress,
      required this.messageValidator,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final MessageValidator messageValidator;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SupportState(emailAddress: $emailAddress, messageValidator: $messageValidator, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SupportState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.messageValidator, messageValidator) ||
                other.messageValidator == messageValidator) &&
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
  int get hashCode => Object.hash(runtimeType, emailAddress, messageValidator,
      showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SupportStateCopyWith<_$_SupportState> get copyWith =>
      __$$_SupportStateCopyWithImpl<_$_SupportState>(this, _$identity);
}

abstract class _SupportState implements SupportState {
  const factory _SupportState(
      {required final EmailAddress emailAddress,
      required final MessageValidator messageValidator,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<Failure, Unit>>
          authFailureOrSuccessOption}) = _$_SupportState;

  @override
  EmailAddress get emailAddress;
  @override
  MessageValidator get messageValidator;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SupportStateCopyWith<_$_SupportState> get copyWith =>
      throw _privateConstructorUsedError;
}
