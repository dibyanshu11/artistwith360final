// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arp_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArpSelectionEvent {
  dynamic get ids => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic ids) getDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic ids)? getDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic ids)? getDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataChanged value) getDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataChanged value)? getDataChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataChanged value)? getDataChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArpSelectionEventCopyWith<ArpSelectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArpSelectionEventCopyWith<$Res> {
  factory $ArpSelectionEventCopyWith(
          ArpSelectionEvent value, $Res Function(ArpSelectionEvent) then) =
      _$ArpSelectionEventCopyWithImpl<$Res, ArpSelectionEvent>;
  @useResult
  $Res call({dynamic ids});
}

/// @nodoc
class _$ArpSelectionEventCopyWithImpl<$Res, $Val extends ArpSelectionEvent>
    implements $ArpSelectionEventCopyWith<$Res> {
  _$ArpSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(_value.copyWith(
      ids: freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDataChangedCopyWith<$Res>
    implements $ArpSelectionEventCopyWith<$Res> {
  factory _$$GetDataChangedCopyWith(
          _$GetDataChanged value, $Res Function(_$GetDataChanged) then) =
      __$$GetDataChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic ids});
}

/// @nodoc
class __$$GetDataChangedCopyWithImpl<$Res>
    extends _$ArpSelectionEventCopyWithImpl<$Res, _$GetDataChanged>
    implements _$$GetDataChangedCopyWith<$Res> {
  __$$GetDataChangedCopyWithImpl(
      _$GetDataChanged _value, $Res Function(_$GetDataChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
  }) {
    return _then(_$GetDataChanged(
      freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$GetDataChanged implements GetDataChanged {
  const _$GetDataChanged(this.ids);

  @override
  final dynamic ids;

  @override
  String toString() {
    return 'ArpSelectionEvent.getDataChanged(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataChanged &&
            const DeepCollectionEquality().equals(other.ids, ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataChangedCopyWith<_$GetDataChanged> get copyWith =>
      __$$GetDataChangedCopyWithImpl<_$GetDataChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic ids) getDataChanged,
  }) {
    return getDataChanged(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic ids)? getDataChanged,
  }) {
    return getDataChanged?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic ids)? getDataChanged,
    required TResult orElse(),
  }) {
    if (getDataChanged != null) {
      return getDataChanged(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDataChanged value) getDataChanged,
  }) {
    return getDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDataChanged value)? getDataChanged,
  }) {
    return getDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDataChanged value)? getDataChanged,
    required TResult orElse(),
  }) {
    if (getDataChanged != null) {
      return getDataChanged(this);
    }
    return orElse();
  }
}

abstract class GetDataChanged implements ArpSelectionEvent {
  const factory GetDataChanged(final dynamic ids) = _$GetDataChanged;

  @override
  dynamic get ids;
  @override
  @JsonKey(ignore: true)
  _$$GetDataChangedCopyWith<_$GetDataChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArpSelectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpViewModel arpViewModel) getArpsuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpViewModel arpViewModel)? getArpsuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpViewModel arpViewModel)? getArpsuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(GetArpsuccess value) getArpsuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(GetArpsuccess value)? getArpsuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(GetArpsuccess value)? getArpsuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArpSelectionStateCopyWith<$Res> {
  factory $ArpSelectionStateCopyWith(
          ArpSelectionState value, $Res Function(ArpSelectionState) then) =
      _$ArpSelectionStateCopyWithImpl<$Res, ArpSelectionState>;
}

/// @nodoc
class _$ArpSelectionStateCopyWithImpl<$Res, $Val extends ArpSelectionState>
    implements $ArpSelectionStateCopyWith<$Res> {
  _$ArpSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$ArpSelectionStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ArpSelectionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpViewModel arpViewModel) getArpsuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpViewModel arpViewModel)? getArpsuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpViewModel arpViewModel)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(GetArpsuccess value) getArpsuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(GetArpsuccess value)? getArpsuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(GetArpsuccess value)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ArpSelectionState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ArpSelectionStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ArpSelectionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpViewModel arpViewModel) getArpsuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpViewModel arpViewModel)? getArpsuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpViewModel arpViewModel)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(GetArpsuccess value) getArpsuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(GetArpsuccess value)? getArpsuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(GetArpsuccess value)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ArpSelectionState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$FailureStateCopyWith<$Res> {
  factory _$$FailureStateCopyWith(
          _$FailureState value, $Res Function(_$FailureState) then) =
      __$$FailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<Either<Failure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$$FailureStateCopyWithImpl<$Res>
    extends _$ArpSelectionStateCopyWithImpl<$Res, _$FailureState>
    implements _$$FailureStateCopyWith<$Res> {
  __$$FailureStateCopyWithImpl(
      _$FailureState _value, $Res Function(_$FailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authFailureOrSuccessOption = null,
  }) {
    return _then(_$FailureState(
      null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$FailureState implements FailureState {
  const _$FailureState(this.authFailureOrSuccessOption);

  @override
  final Option<Either<Failure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'ArpSelectionState.failureState(authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureState &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      __$$FailureStateCopyWithImpl<_$FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpViewModel arpViewModel) getArpsuccess,
  }) {
    return failureState(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpViewModel arpViewModel)? getArpsuccess,
  }) {
    return failureState?.call(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpViewModel arpViewModel)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(authFailureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(GetArpsuccess value) getArpsuccess,
  }) {
    return failureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(GetArpsuccess value)? getArpsuccess,
  }) {
    return failureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(GetArpsuccess value)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(this);
    }
    return orElse();
  }
}

abstract class FailureState implements ArpSelectionState {
  const factory FailureState(
          final Option<Either<Failure, Unit>> authFailureOrSuccessOption) =
      _$FailureState;

  Option<Either<Failure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetArpsuccessCopyWith<$Res> {
  factory _$$GetArpsuccessCopyWith(
          _$GetArpsuccess value, $Res Function(_$GetArpsuccess) then) =
      __$$GetArpsuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ArpViewModel arpViewModel});
}

/// @nodoc
class __$$GetArpsuccessCopyWithImpl<$Res>
    extends _$ArpSelectionStateCopyWithImpl<$Res, _$GetArpsuccess>
    implements _$$GetArpsuccessCopyWith<$Res> {
  __$$GetArpsuccessCopyWithImpl(
      _$GetArpsuccess _value, $Res Function(_$GetArpsuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arpViewModel = null,
  }) {
    return _then(_$GetArpsuccess(
      null == arpViewModel
          ? _value.arpViewModel
          : arpViewModel // ignore: cast_nullable_to_non_nullable
              as ArpViewModel,
    ));
  }
}

/// @nodoc

class _$GetArpsuccess implements GetArpsuccess {
  const _$GetArpsuccess(this.arpViewModel);

  @override
  final ArpViewModel arpViewModel;

  @override
  String toString() {
    return 'ArpSelectionState.getArpsuccess(arpViewModel: $arpViewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArpsuccess &&
            (identical(other.arpViewModel, arpViewModel) ||
                other.arpViewModel == arpViewModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arpViewModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArpsuccessCopyWith<_$GetArpsuccess> get copyWith =>
      __$$GetArpsuccessCopyWithImpl<_$GetArpsuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpViewModel arpViewModel) getArpsuccess,
  }) {
    return getArpsuccess(arpViewModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpViewModel arpViewModel)? getArpsuccess,
  }) {
    return getArpsuccess?.call(arpViewModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpViewModel arpViewModel)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (getArpsuccess != null) {
      return getArpsuccess(arpViewModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(GetArpsuccess value) getArpsuccess,
  }) {
    return getArpsuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(GetArpsuccess value)? getArpsuccess,
  }) {
    return getArpsuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(GetArpsuccess value)? getArpsuccess,
    required TResult orElse(),
  }) {
    if (getArpsuccess != null) {
      return getArpsuccess(this);
    }
    return orElse();
  }
}

abstract class GetArpsuccess implements ArpSelectionState {
  const factory GetArpsuccess(final ArpViewModel arpViewModel) =
      _$GetArpsuccess;

  ArpViewModel get arpViewModel;
  @JsonKey(ignore: true)
  _$$GetArpsuccessCopyWith<_$GetArpsuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
