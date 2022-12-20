// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic episodeStr) episodeChanged,
    required TResult Function(dynamic clipStr) clipChanged,
    required TResult Function() notifiationButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic episodeStr)? episodeChanged,
    TResult? Function(dynamic clipStr)? clipChanged,
    TResult? Function()? notifiationButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic episodeStr)? episodeChanged,
    TResult Function(dynamic clipStr)? clipChanged,
    TResult Function()? notifiationButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeChanged value) episodeChanged,
    required TResult Function(ClipChanged value) clipChanged,
    required TResult Function(NotifiationButtonTapped value)
        notifiationButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeChanged value)? episodeChanged,
    TResult? Function(ClipChanged value)? clipChanged,
    TResult? Function(NotifiationButtonTapped value)? notifiationButtonTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeChanged value)? episodeChanged,
    TResult Function(ClipChanged value)? clipChanged,
    TResult Function(NotifiationButtonTapped value)? notifiationButtonTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res, NotificationEvent>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res, $Val extends NotificationEvent>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EpisodeChangedCopyWith<$Res> {
  factory _$$EpisodeChangedCopyWith(
          _$EpisodeChanged value, $Res Function(_$EpisodeChanged) then) =
      __$$EpisodeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic episodeStr});
}

/// @nodoc
class __$$EpisodeChangedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$EpisodeChanged>
    implements _$$EpisodeChangedCopyWith<$Res> {
  __$$EpisodeChangedCopyWithImpl(
      _$EpisodeChanged _value, $Res Function(_$EpisodeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? episodeStr = freezed,
  }) {
    return _then(_$EpisodeChanged(
      freezed == episodeStr
          ? _value.episodeStr
          : episodeStr // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$EpisodeChanged implements EpisodeChanged {
  const _$EpisodeChanged(this.episodeStr);

  @override
  final dynamic episodeStr;

  @override
  String toString() {
    return 'NotificationEvent.episodeChanged(episodeStr: $episodeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeChanged &&
            const DeepCollectionEquality()
                .equals(other.episodeStr, episodeStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(episodeStr));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeChangedCopyWith<_$EpisodeChanged> get copyWith =>
      __$$EpisodeChangedCopyWithImpl<_$EpisodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic episodeStr) episodeChanged,
    required TResult Function(dynamic clipStr) clipChanged,
    required TResult Function() notifiationButtonTapped,
  }) {
    return episodeChanged(episodeStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic episodeStr)? episodeChanged,
    TResult? Function(dynamic clipStr)? clipChanged,
    TResult? Function()? notifiationButtonTapped,
  }) {
    return episodeChanged?.call(episodeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic episodeStr)? episodeChanged,
    TResult Function(dynamic clipStr)? clipChanged,
    TResult Function()? notifiationButtonTapped,
    required TResult orElse(),
  }) {
    if (episodeChanged != null) {
      return episodeChanged(episodeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeChanged value) episodeChanged,
    required TResult Function(ClipChanged value) clipChanged,
    required TResult Function(NotifiationButtonTapped value)
        notifiationButtonTapped,
  }) {
    return episodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeChanged value)? episodeChanged,
    TResult? Function(ClipChanged value)? clipChanged,
    TResult? Function(NotifiationButtonTapped value)? notifiationButtonTapped,
  }) {
    return episodeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeChanged value)? episodeChanged,
    TResult Function(ClipChanged value)? clipChanged,
    TResult Function(NotifiationButtonTapped value)? notifiationButtonTapped,
    required TResult orElse(),
  }) {
    if (episodeChanged != null) {
      return episodeChanged(this);
    }
    return orElse();
  }
}

abstract class EpisodeChanged implements NotificationEvent {
  const factory EpisodeChanged(final dynamic episodeStr) = _$EpisodeChanged;

  dynamic get episodeStr;
  @JsonKey(ignore: true)
  _$$EpisodeChangedCopyWith<_$EpisodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipChangedCopyWith<$Res> {
  factory _$$ClipChangedCopyWith(
          _$ClipChanged value, $Res Function(_$ClipChanged) then) =
      __$$ClipChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic clipStr});
}

/// @nodoc
class __$$ClipChangedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$ClipChanged>
    implements _$$ClipChangedCopyWith<$Res> {
  __$$ClipChangedCopyWithImpl(
      _$ClipChanged _value, $Res Function(_$ClipChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clipStr = freezed,
  }) {
    return _then(_$ClipChanged(
      freezed == clipStr
          ? _value.clipStr
          : clipStr // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ClipChanged implements ClipChanged {
  const _$ClipChanged(this.clipStr);

  @override
  final dynamic clipStr;

  @override
  String toString() {
    return 'NotificationEvent.clipChanged(clipStr: $clipStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipChanged &&
            const DeepCollectionEquality().equals(other.clipStr, clipStr));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(clipStr));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipChangedCopyWith<_$ClipChanged> get copyWith =>
      __$$ClipChangedCopyWithImpl<_$ClipChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic episodeStr) episodeChanged,
    required TResult Function(dynamic clipStr) clipChanged,
    required TResult Function() notifiationButtonTapped,
  }) {
    return clipChanged(clipStr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic episodeStr)? episodeChanged,
    TResult? Function(dynamic clipStr)? clipChanged,
    TResult? Function()? notifiationButtonTapped,
  }) {
    return clipChanged?.call(clipStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic episodeStr)? episodeChanged,
    TResult Function(dynamic clipStr)? clipChanged,
    TResult Function()? notifiationButtonTapped,
    required TResult orElse(),
  }) {
    if (clipChanged != null) {
      return clipChanged(clipStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeChanged value) episodeChanged,
    required TResult Function(ClipChanged value) clipChanged,
    required TResult Function(NotifiationButtonTapped value)
        notifiationButtonTapped,
  }) {
    return clipChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeChanged value)? episodeChanged,
    TResult? Function(ClipChanged value)? clipChanged,
    TResult? Function(NotifiationButtonTapped value)? notifiationButtonTapped,
  }) {
    return clipChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeChanged value)? episodeChanged,
    TResult Function(ClipChanged value)? clipChanged,
    TResult Function(NotifiationButtonTapped value)? notifiationButtonTapped,
    required TResult orElse(),
  }) {
    if (clipChanged != null) {
      return clipChanged(this);
    }
    return orElse();
  }
}

abstract class ClipChanged implements NotificationEvent {
  const factory ClipChanged(final dynamic clipStr) = _$ClipChanged;

  dynamic get clipStr;
  @JsonKey(ignore: true)
  _$$ClipChangedCopyWith<_$ClipChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotifiationButtonTappedCopyWith<$Res> {
  factory _$$NotifiationButtonTappedCopyWith(_$NotifiationButtonTapped value,
          $Res Function(_$NotifiationButtonTapped) then) =
      __$$NotifiationButtonTappedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotifiationButtonTappedCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res, _$NotifiationButtonTapped>
    implements _$$NotifiationButtonTappedCopyWith<$Res> {
  __$$NotifiationButtonTappedCopyWithImpl(_$NotifiationButtonTapped _value,
      $Res Function(_$NotifiationButtonTapped) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotifiationButtonTapped implements NotifiationButtonTapped {
  const _$NotifiationButtonTapped();

  @override
  String toString() {
    return 'NotificationEvent.notifiationButtonTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotifiationButtonTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic episodeStr) episodeChanged,
    required TResult Function(dynamic clipStr) clipChanged,
    required TResult Function() notifiationButtonTapped,
  }) {
    return notifiationButtonTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic episodeStr)? episodeChanged,
    TResult? Function(dynamic clipStr)? clipChanged,
    TResult? Function()? notifiationButtonTapped,
  }) {
    return notifiationButtonTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic episodeStr)? episodeChanged,
    TResult Function(dynamic clipStr)? clipChanged,
    TResult Function()? notifiationButtonTapped,
    required TResult orElse(),
  }) {
    if (notifiationButtonTapped != null) {
      return notifiationButtonTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EpisodeChanged value) episodeChanged,
    required TResult Function(ClipChanged value) clipChanged,
    required TResult Function(NotifiationButtonTapped value)
        notifiationButtonTapped,
  }) {
    return notifiationButtonTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EpisodeChanged value)? episodeChanged,
    TResult? Function(ClipChanged value)? clipChanged,
    TResult? Function(NotifiationButtonTapped value)? notifiationButtonTapped,
  }) {
    return notifiationButtonTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EpisodeChanged value)? episodeChanged,
    TResult Function(ClipChanged value)? clipChanged,
    TResult Function(NotifiationButtonTapped value)? notifiationButtonTapped,
    required TResult orElse(),
  }) {
    if (notifiationButtonTapped != null) {
      return notifiationButtonTapped(this);
    }
    return orElse();
  }
}

abstract class NotifiationButtonTapped implements NotificationEvent {
  const factory NotifiationButtonTapped() = _$NotifiationButtonTapped;
}

/// @nodoc
mixin _$NotificationState {
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res, NotificationState>;
  @useResult
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res, $Val extends NotificationState>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_NotificationStatetCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory _$$_NotificationStatetCopyWith(_$_NotificationStatet value,
          $Res Function(_$_NotificationStatet) then) =
      __$$_NotificationStatetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showErrorMessages,
      bool isSubmitting,
      Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$_NotificationStatetCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res, _$_NotificationStatet>
    implements _$$_NotificationStatetCopyWith<$Res> {
  __$$_NotificationStatetCopyWithImpl(
      _$_NotificationStatet _value, $Res Function(_$_NotificationStatet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showErrorMessages = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$_NotificationStatet(
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

class _$_NotificationStatet implements _NotificationStatet {
  const _$_NotificationStatet(
      {required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<Failure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'NotificationState(showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationStatet &&
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
  int get hashCode => Object.hash(
      runtimeType, showErrorMessages, isSubmitting, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationStatetCopyWith<_$_NotificationStatet> get copyWith =>
      __$$_NotificationStatetCopyWithImpl<_$_NotificationStatet>(
          this, _$identity);
}

abstract class _NotificationStatet implements NotificationState {
  const factory _NotificationStatet(
      {required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<Failure, Unit>>
          authFailureOrSuccessOption}) = _$_NotificationStatet;

  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  Option<Either<Failure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationStatetCopyWith<_$_NotificationStatet> get copyWith =>
      throw _privateConstructorUsedError;
}
