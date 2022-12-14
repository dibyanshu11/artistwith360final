// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mylist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MylistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyListChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyListChanged value) getMyListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMyListChanged value)? getMyListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyListChanged value)? getMyListChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MylistEventCopyWith<$Res> {
  factory $MylistEventCopyWith(
          MylistEvent value, $Res Function(MylistEvent) then) =
      _$MylistEventCopyWithImpl<$Res, MylistEvent>;
}

/// @nodoc
class _$MylistEventCopyWithImpl<$Res, $Val extends MylistEvent>
    implements $MylistEventCopyWith<$Res> {
  _$MylistEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMyListChangedCopyWith<$Res> {
  factory _$$GetMyListChangedCopyWith(
          _$GetMyListChanged value, $Res Function(_$GetMyListChanged) then) =
      __$$GetMyListChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMyListChangedCopyWithImpl<$Res>
    extends _$MylistEventCopyWithImpl<$Res, _$GetMyListChanged>
    implements _$$GetMyListChangedCopyWith<$Res> {
  __$$GetMyListChangedCopyWithImpl(
      _$GetMyListChanged _value, $Res Function(_$GetMyListChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetMyListChanged implements GetMyListChanged {
  const _$GetMyListChanged();

  @override
  String toString() {
    return 'MylistEvent.getMyListChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetMyListChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getMyListChanged,
  }) {
    return getMyListChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getMyListChanged,
  }) {
    return getMyListChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getMyListChanged,
    required TResult orElse(),
  }) {
    if (getMyListChanged != null) {
      return getMyListChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMyListChanged value) getMyListChanged,
  }) {
    return getMyListChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMyListChanged value)? getMyListChanged,
  }) {
    return getMyListChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMyListChanged value)? getMyListChanged,
    required TResult orElse(),
  }) {
    if (getMyListChanged != null) {
      return getMyListChanged(this);
    }
    return orElse();
  }
}

abstract class GetMyListChanged implements MylistEvent {
  const factory GetMyListChanged() = _$GetMyListChanged;
}

/// @nodoc
mixin _$MylistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(Failure failure) failureState,
    required TResult Function(MyListModel myListModel) successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(MyListModel myListModel)? successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(Failure failure)? failureState,
    TResult Function(MyListModel myListModel)? successState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialsState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(FailureState value) failureState,
    required TResult Function(SuccessState value) successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialsState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(SuccessState value)? successState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialsState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(FailureState value)? failureState,
    TResult Function(SuccessState value)? successState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MylistStateCopyWith<$Res> {
  factory $MylistStateCopyWith(
          MylistState value, $Res Function(MylistState) then) =
      _$MylistStateCopyWithImpl<$Res, MylistState>;
}

/// @nodoc
class _$MylistStateCopyWithImpl<$Res, $Val extends MylistState>
    implements $MylistStateCopyWith<$Res> {
  _$MylistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialsStateCopyWith<$Res> {
  factory _$$InitialsStateCopyWith(
          _$InitialsState value, $Res Function(_$InitialsState) then) =
      __$$InitialsStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialsStateCopyWithImpl<$Res>
    extends _$MylistStateCopyWithImpl<$Res, _$InitialsState>
    implements _$$InitialsStateCopyWith<$Res> {
  __$$InitialsStateCopyWithImpl(
      _$InitialsState _value, $Res Function(_$InitialsState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialsState implements InitialsState {
  const _$InitialsState();

  @override
  String toString() {
    return 'MylistState.initialState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(Failure failure) failureState,
    required TResult Function(MyListModel myListModel) successState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(MyListModel myListModel)? successState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(Failure failure)? failureState,
    TResult Function(MyListModel myListModel)? successState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialsState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(FailureState value) failureState,
    required TResult Function(SuccessState value) successState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialsState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(SuccessState value)? successState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialsState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(FailureState value)? failureState,
    TResult Function(SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class InitialsState implements MylistState {
  const factory InitialsState() = _$InitialsState;
}

/// @nodoc
abstract class _$$LoadingStateCopyWith<$Res> {
  factory _$$LoadingStateCopyWith(
          _$LoadingState value, $Res Function(_$LoadingState) then) =
      __$$LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateCopyWithImpl<$Res>
    extends _$MylistStateCopyWithImpl<$Res, _$LoadingState>
    implements _$$LoadingStateCopyWith<$Res> {
  __$$LoadingStateCopyWithImpl(
      _$LoadingState _value, $Res Function(_$LoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingState implements LoadingState {
  const _$LoadingState();

  @override
  String toString() {
    return 'MylistState.loadingState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(Failure failure) failureState,
    required TResult Function(MyListModel myListModel) successState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(MyListModel myListModel)? successState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(Failure failure)? failureState,
    TResult Function(MyListModel myListModel)? successState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialsState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(FailureState value) failureState,
    required TResult Function(SuccessState value) successState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialsState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(SuccessState value)? successState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialsState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(FailureState value)? failureState,
    TResult Function(SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements MylistState {
  const factory LoadingState() = _$LoadingState;
}

/// @nodoc
abstract class _$$FailureStateCopyWith<$Res> {
  factory _$$FailureStateCopyWith(
          _$FailureState value, $Res Function(_$FailureState) then) =
      __$$FailureStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailureStateCopyWithImpl<$Res>
    extends _$MylistStateCopyWithImpl<$Res, _$FailureState>
    implements _$$FailureStateCopyWith<$Res> {
  __$$FailureStateCopyWithImpl(
      _$FailureState _value, $Res Function(_$FailureState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailureState(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FailureState implements FailureState {
  const _$FailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'MylistState.failureState(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureState &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      __$$FailureStateCopyWithImpl<_$FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(Failure failure) failureState,
    required TResult Function(MyListModel myListModel) successState,
  }) {
    return failureState(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(MyListModel myListModel)? successState,
  }) {
    return failureState?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(Failure failure)? failureState,
    TResult Function(MyListModel myListModel)? successState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialsState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(FailureState value) failureState,
    required TResult Function(SuccessState value) successState,
  }) {
    return failureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialsState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(SuccessState value)? successState,
  }) {
    return failureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialsState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(FailureState value)? failureState,
    TResult Function(SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(this);
    }
    return orElse();
  }
}

abstract class FailureState implements MylistState {
  const factory FailureState(final Failure failure) = _$FailureState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateCopyWith<$Res> {
  factory _$$SuccessStateCopyWith(
          _$SuccessState value, $Res Function(_$SuccessState) then) =
      __$$SuccessStateCopyWithImpl<$Res>;
  @useResult
  $Res call({MyListModel myListModel});
}

/// @nodoc
class __$$SuccessStateCopyWithImpl<$Res>
    extends _$MylistStateCopyWithImpl<$Res, _$SuccessState>
    implements _$$SuccessStateCopyWith<$Res> {
  __$$SuccessStateCopyWithImpl(
      _$SuccessState _value, $Res Function(_$SuccessState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myListModel = null,
  }) {
    return _then(_$SuccessState(
      null == myListModel
          ? _value.myListModel
          : myListModel // ignore: cast_nullable_to_non_nullable
              as MyListModel,
    ));
  }
}

/// @nodoc

class _$SuccessState implements SuccessState {
  const _$SuccessState(this.myListModel);

  @override
  final MyListModel myListModel;

  @override
  String toString() {
    return 'MylistState.successState(myListModel: $myListModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessState &&
            (identical(other.myListModel, myListModel) ||
                other.myListModel == myListModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myListModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateCopyWith<_$SuccessState> get copyWith =>
      __$$SuccessStateCopyWithImpl<_$SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function() loadingState,
    required TResult Function(Failure failure) failureState,
    required TResult Function(MyListModel myListModel) successState,
  }) {
    return successState(myListModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function()? loadingState,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(MyListModel myListModel)? successState,
  }) {
    return successState?.call(myListModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function()? loadingState,
    TResult Function(Failure failure)? failureState,
    TResult Function(MyListModel myListModel)? successState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(myListModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialsState value) initialState,
    required TResult Function(LoadingState value) loadingState,
    required TResult Function(FailureState value) failureState,
    required TResult Function(SuccessState value) successState,
  }) {
    return successState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialsState value)? initialState,
    TResult? Function(LoadingState value)? loadingState,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(SuccessState value)? successState,
  }) {
    return successState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialsState value)? initialState,
    TResult Function(LoadingState value)? loadingState,
    TResult Function(FailureState value)? failureState,
    TResult Function(SuccessState value)? successState,
    required TResult orElse(),
  }) {
    if (successState != null) {
      return successState(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements MylistState {
  const factory SuccessState(final MyListModel myListModel) = _$SuccessState;

  MyListModel get myListModel;
  @JsonKey(ignore: true)
  _$$SuccessStateCopyWith<_$SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
