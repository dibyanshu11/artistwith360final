// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'clips_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClipsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDataChanged,
    required TResult Function(int id, String text) clipsLikeChangged,
    required TResult Function(int id, String comment) commentChangged,
    required TResult Function(int id) getCommentById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDataChanged,
    TResult? Function(int id, String text)? clipsLikeChangged,
    TResult? Function(int id, String comment)? commentChangged,
    TResult? Function(int id)? getCommentById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDataChanged,
    TResult Function(int id, String text)? clipsLikeChangged,
    TResult Function(int id, String comment)? commentChangged,
    TResult Function(int id)? getCommentById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(ClipsLikeChangged value) clipsLikeChangged,
    required TResult Function(CommentChangged value) commentChangged,
    required TResult Function(GetCommentById value) getCommentById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult? Function(CommentChangged value)? commentChangged,
    TResult? Function(GetCommentById value)? getCommentById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult Function(CommentChangged value)? commentChangged,
    TResult Function(GetCommentById value)? getCommentById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipsEventCopyWith<$Res> {
  factory $ClipsEventCopyWith(
          ClipsEvent value, $Res Function(ClipsEvent) then) =
      _$ClipsEventCopyWithImpl<$Res, ClipsEvent>;
}

/// @nodoc
class _$ClipsEventCopyWithImpl<$Res, $Val extends ClipsEvent>
    implements $ClipsEventCopyWith<$Res> {
  _$ClipsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataCopyWith<$Res> {
  factory _$$GetDataCopyWith(_$GetData value, $Res Function(_$GetData) then) =
      __$$GetDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDataCopyWithImpl<$Res>
    extends _$ClipsEventCopyWithImpl<$Res, _$GetData>
    implements _$$GetDataCopyWith<$Res> {
  __$$GetDataCopyWithImpl(_$GetData _value, $Res Function(_$GetData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetData implements GetData {
  const _$GetData();

  @override
  String toString() {
    return 'ClipsEvent.getDataChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDataChanged,
    required TResult Function(int id, String text) clipsLikeChangged,
    required TResult Function(int id, String comment) commentChangged,
    required TResult Function(int id) getCommentById,
  }) {
    return getDataChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDataChanged,
    TResult? Function(int id, String text)? clipsLikeChangged,
    TResult? Function(int id, String comment)? commentChangged,
    TResult? Function(int id)? getCommentById,
  }) {
    return getDataChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDataChanged,
    TResult Function(int id, String text)? clipsLikeChangged,
    TResult Function(int id, String comment)? commentChangged,
    TResult Function(int id)? getCommentById,
    required TResult orElse(),
  }) {
    if (getDataChanged != null) {
      return getDataChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(ClipsLikeChangged value) clipsLikeChangged,
    required TResult Function(CommentChangged value) commentChangged,
    required TResult Function(GetCommentById value) getCommentById,
  }) {
    return getDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult? Function(CommentChangged value)? commentChangged,
    TResult? Function(GetCommentById value)? getCommentById,
  }) {
    return getDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult Function(CommentChangged value)? commentChangged,
    TResult Function(GetCommentById value)? getCommentById,
    required TResult orElse(),
  }) {
    if (getDataChanged != null) {
      return getDataChanged(this);
    }
    return orElse();
  }
}

abstract class GetData implements ClipsEvent {
  const factory GetData() = _$GetData;
}

/// @nodoc
abstract class _$$ClipsLikeChanggedCopyWith<$Res> {
  factory _$$ClipsLikeChanggedCopyWith(
          _$ClipsLikeChangged value, $Res Function(_$ClipsLikeChangged) then) =
      __$$ClipsLikeChanggedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String text});
}

/// @nodoc
class __$$ClipsLikeChanggedCopyWithImpl<$Res>
    extends _$ClipsEventCopyWithImpl<$Res, _$ClipsLikeChangged>
    implements _$$ClipsLikeChanggedCopyWith<$Res> {
  __$$ClipsLikeChanggedCopyWithImpl(
      _$ClipsLikeChangged _value, $Res Function(_$ClipsLikeChangged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_$ClipsLikeChangged(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClipsLikeChangged implements ClipsLikeChangged {
  const _$ClipsLikeChangged(this.id, this.text);

  @override
  final int id;
  @override
  final String text;

  @override
  String toString() {
    return 'ClipsEvent.clipsLikeChangged(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClipsLikeChangged &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClipsLikeChanggedCopyWith<_$ClipsLikeChangged> get copyWith =>
      __$$ClipsLikeChanggedCopyWithImpl<_$ClipsLikeChangged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDataChanged,
    required TResult Function(int id, String text) clipsLikeChangged,
    required TResult Function(int id, String comment) commentChangged,
    required TResult Function(int id) getCommentById,
  }) {
    return clipsLikeChangged(id, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDataChanged,
    TResult? Function(int id, String text)? clipsLikeChangged,
    TResult? Function(int id, String comment)? commentChangged,
    TResult? Function(int id)? getCommentById,
  }) {
    return clipsLikeChangged?.call(id, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDataChanged,
    TResult Function(int id, String text)? clipsLikeChangged,
    TResult Function(int id, String comment)? commentChangged,
    TResult Function(int id)? getCommentById,
    required TResult orElse(),
  }) {
    if (clipsLikeChangged != null) {
      return clipsLikeChangged(id, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(ClipsLikeChangged value) clipsLikeChangged,
    required TResult Function(CommentChangged value) commentChangged,
    required TResult Function(GetCommentById value) getCommentById,
  }) {
    return clipsLikeChangged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult? Function(CommentChangged value)? commentChangged,
    TResult? Function(GetCommentById value)? getCommentById,
  }) {
    return clipsLikeChangged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult Function(CommentChangged value)? commentChangged,
    TResult Function(GetCommentById value)? getCommentById,
    required TResult orElse(),
  }) {
    if (clipsLikeChangged != null) {
      return clipsLikeChangged(this);
    }
    return orElse();
  }
}

abstract class ClipsLikeChangged implements ClipsEvent {
  const factory ClipsLikeChangged(final int id, final String text) =
      _$ClipsLikeChangged;

  int get id;
  String get text;
  @JsonKey(ignore: true)
  _$$ClipsLikeChanggedCopyWith<_$ClipsLikeChangged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentChanggedCopyWith<$Res> {
  factory _$$CommentChanggedCopyWith(
          _$CommentChangged value, $Res Function(_$CommentChangged) then) =
      __$$CommentChanggedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String comment});
}

/// @nodoc
class __$$CommentChanggedCopyWithImpl<$Res>
    extends _$ClipsEventCopyWithImpl<$Res, _$CommentChangged>
    implements _$$CommentChanggedCopyWith<$Res> {
  __$$CommentChanggedCopyWithImpl(
      _$CommentChangged _value, $Res Function(_$CommentChangged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
  }) {
    return _then(_$CommentChangged(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentChangged implements CommentChangged {
  const _$CommentChangged(this.id, this.comment);

  @override
  final int id;
  @override
  final String comment;

  @override
  String toString() {
    return 'ClipsEvent.commentChangged(id: $id, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentChangged &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentChanggedCopyWith<_$CommentChangged> get copyWith =>
      __$$CommentChanggedCopyWithImpl<_$CommentChangged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDataChanged,
    required TResult Function(int id, String text) clipsLikeChangged,
    required TResult Function(int id, String comment) commentChangged,
    required TResult Function(int id) getCommentById,
  }) {
    return commentChangged(id, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDataChanged,
    TResult? Function(int id, String text)? clipsLikeChangged,
    TResult? Function(int id, String comment)? commentChangged,
    TResult? Function(int id)? getCommentById,
  }) {
    return commentChangged?.call(id, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDataChanged,
    TResult Function(int id, String text)? clipsLikeChangged,
    TResult Function(int id, String comment)? commentChangged,
    TResult Function(int id)? getCommentById,
    required TResult orElse(),
  }) {
    if (commentChangged != null) {
      return commentChangged(id, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(ClipsLikeChangged value) clipsLikeChangged,
    required TResult Function(CommentChangged value) commentChangged,
    required TResult Function(GetCommentById value) getCommentById,
  }) {
    return commentChangged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult? Function(CommentChangged value)? commentChangged,
    TResult? Function(GetCommentById value)? getCommentById,
  }) {
    return commentChangged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult Function(CommentChangged value)? commentChangged,
    TResult Function(GetCommentById value)? getCommentById,
    required TResult orElse(),
  }) {
    if (commentChangged != null) {
      return commentChangged(this);
    }
    return orElse();
  }
}

abstract class CommentChangged implements ClipsEvent {
  const factory CommentChangged(final int id, final String comment) =
      _$CommentChangged;

  int get id;
  String get comment;
  @JsonKey(ignore: true)
  _$$CommentChanggedCopyWith<_$CommentChangged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommentByIdCopyWith<$Res> {
  factory _$$GetCommentByIdCopyWith(
          _$GetCommentById value, $Res Function(_$GetCommentById) then) =
      __$$GetCommentByIdCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetCommentByIdCopyWithImpl<$Res>
    extends _$ClipsEventCopyWithImpl<$Res, _$GetCommentById>
    implements _$$GetCommentByIdCopyWith<$Res> {
  __$$GetCommentByIdCopyWithImpl(
      _$GetCommentById _value, $Res Function(_$GetCommentById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetCommentById(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetCommentById implements GetCommentById {
  const _$GetCommentById(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ClipsEvent.getCommentById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentById &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentByIdCopyWith<_$GetCommentById> get copyWith =>
      __$$GetCommentByIdCopyWithImpl<_$GetCommentById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDataChanged,
    required TResult Function(int id, String text) clipsLikeChangged,
    required TResult Function(int id, String comment) commentChangged,
    required TResult Function(int id) getCommentById,
  }) {
    return getCommentById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDataChanged,
    TResult? Function(int id, String text)? clipsLikeChangged,
    TResult? Function(int id, String comment)? commentChangged,
    TResult? Function(int id)? getCommentById,
  }) {
    return getCommentById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDataChanged,
    TResult Function(int id, String text)? clipsLikeChangged,
    TResult Function(int id, String comment)? commentChangged,
    TResult Function(int id)? getCommentById,
    required TResult orElse(),
  }) {
    if (getCommentById != null) {
      return getCommentById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(ClipsLikeChangged value) clipsLikeChangged,
    required TResult Function(CommentChangged value) commentChangged,
    required TResult Function(GetCommentById value) getCommentById,
  }) {
    return getCommentById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult? Function(CommentChangged value)? commentChangged,
    TResult? Function(GetCommentById value)? getCommentById,
  }) {
    return getCommentById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(ClipsLikeChangged value)? clipsLikeChangged,
    TResult Function(CommentChangged value)? commentChangged,
    TResult Function(GetCommentById value)? getCommentById,
    required TResult orElse(),
  }) {
    if (getCommentById != null) {
      return getCommentById(this);
    }
    return orElse();
  }
}

abstract class GetCommentById implements ClipsEvent {
  const factory GetCommentById(final int id) = _$GetCommentById;

  int get id;
  @JsonKey(ignore: true)
  _$$GetCommentByIdCopyWith<_$GetCommentById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClipsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClipsStateCopyWith<$Res> {
  factory $ClipsStateCopyWith(
          ClipsState value, $Res Function(ClipsState) then) =
      _$ClipsStateCopyWithImpl<$Res, ClipsState>;
}

/// @nodoc
class _$ClipsStateCopyWithImpl<$Res, $Val extends ClipsState>
    implements $ClipsStateCopyWith<$Res> {
  _$ClipsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialsCopyWith<$Res> {
  factory _$$InitialsCopyWith(
          _$Initials value, $Res Function(_$Initials) then) =
      __$$InitialsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialsCopyWithImpl<$Res>
    extends _$ClipsStateCopyWithImpl<$Res, _$Initials>
    implements _$$InitialsCopyWith<$Res> {
  __$$InitialsCopyWithImpl(_$Initials _value, $Res Function(_$Initials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initials implements Initials {
  const _$Initials();

  @override
  String toString() {
    return 'ClipsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initials);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
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
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initials implements ClipsState {
  const factory Initials() = _$Initials;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ClipsStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ClipsState.loading()';
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
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
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
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ClipsState {
  const factory Loading() = _$Loading;
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
    extends _$ClipsStateCopyWithImpl<$Res, _$FailureState>
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
    return 'ClipsState.failureState(failure: $failure)';
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
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) {
    return failureState(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) {
    return failureState?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
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
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) {
    return failureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) {
    return failureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(this);
    }
    return orElse();
  }
}

abstract class FailureState implements ClipsState {
  const factory FailureState(final Failure failure) = _$FailureState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({QuickClipsModel quickClipsModel});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$ClipsStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quickClipsModel = null,
  }) {
    return _then(_$Success(
      null == quickClipsModel
          ? _value.quickClipsModel
          : quickClipsModel // ignore: cast_nullable_to_non_nullable
              as QuickClipsModel,
    ));
  }
}

/// @nodoc

class _$Success implements Success {
  const _$Success(this.quickClipsModel);

  @override
  final QuickClipsModel quickClipsModel;

  @override
  String toString() {
    return 'ClipsState.success(quickClipsModel: $quickClipsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            (identical(other.quickClipsModel, quickClipsModel) ||
                other.quickClipsModel == quickClipsModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quickClipsModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) {
    return success(quickClipsModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) {
    return success?.call(quickClipsModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(quickClipsModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ClipsState {
  const factory Success(final QuickClipsModel quickClipsModel) = _$Success;

  QuickClipsModel get quickClipsModel;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommentByIdSuccessCopyWith<$Res> {
  factory _$$GetCommentByIdSuccessCopyWith(_$GetCommentByIdSuccess value,
          $Res Function(_$GetCommentByIdSuccess) then) =
      __$$GetCommentByIdSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({CommentModel commentModel});

  $CommentModelCopyWith<$Res> get commentModel;
}

/// @nodoc
class __$$GetCommentByIdSuccessCopyWithImpl<$Res>
    extends _$ClipsStateCopyWithImpl<$Res, _$GetCommentByIdSuccess>
    implements _$$GetCommentByIdSuccessCopyWith<$Res> {
  __$$GetCommentByIdSuccessCopyWithImpl(_$GetCommentByIdSuccess _value,
      $Res Function(_$GetCommentByIdSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentModel = null,
  }) {
    return _then(_$GetCommentByIdSuccess(
      null == commentModel
          ? _value.commentModel
          : commentModel // ignore: cast_nullable_to_non_nullable
              as CommentModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentModelCopyWith<$Res> get commentModel {
    return $CommentModelCopyWith<$Res>(_value.commentModel, (value) {
      return _then(_value.copyWith(commentModel: value));
    });
  }
}

/// @nodoc

class _$GetCommentByIdSuccess implements GetCommentByIdSuccess {
  const _$GetCommentByIdSuccess(this.commentModel);

  @override
  final CommentModel commentModel;

  @override
  String toString() {
    return 'ClipsState.getCommentByIdSuccess(commentModel: $commentModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentByIdSuccess &&
            (identical(other.commentModel, commentModel) ||
                other.commentModel == commentModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commentModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentByIdSuccessCopyWith<_$GetCommentByIdSuccess> get copyWith =>
      __$$GetCommentByIdSuccessCopyWithImpl<_$GetCommentByIdSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) {
    return getCommentByIdSuccess(commentModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) {
    return getCommentByIdSuccess?.call(commentModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
    required TResult orElse(),
  }) {
    if (getCommentByIdSuccess != null) {
      return getCommentByIdSuccess(commentModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) {
    return getCommentByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) {
    return getCommentByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) {
    if (getCommentByIdSuccess != null) {
      return getCommentByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class GetCommentByIdSuccess implements ClipsState {
  const factory GetCommentByIdSuccess(final CommentModel commentModel) =
      _$GetCommentByIdSuccess;

  CommentModel get commentModel;
  @JsonKey(ignore: true)
  _$$GetCommentByIdSuccessCopyWith<_$GetCommentByIdSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClipLikeDislikeSuccessCopyWith<$Res> {
  factory _$$ClipLikeDislikeSuccessCopyWith(_$ClipLikeDislikeSuccess value,
          $Res Function(_$ClipLikeDislikeSuccess) then) =
      __$$ClipLikeDislikeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClipLikeDislikeSuccessCopyWithImpl<$Res>
    extends _$ClipsStateCopyWithImpl<$Res, _$ClipLikeDislikeSuccess>
    implements _$$ClipLikeDislikeSuccessCopyWith<$Res> {
  __$$ClipLikeDislikeSuccessCopyWithImpl(_$ClipLikeDislikeSuccess _value,
      $Res Function(_$ClipLikeDislikeSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClipLikeDislikeSuccess implements ClipLikeDislikeSuccess {
  const _$ClipLikeDislikeSuccess();

  @override
  String toString() {
    return 'ClipsState.clipLikeDislikeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClipLikeDislikeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) {
    return clipLikeDislikeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) {
    return clipLikeDislikeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
    required TResult orElse(),
  }) {
    if (clipLikeDislikeSuccess != null) {
      return clipLikeDislikeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) {
    return clipLikeDislikeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) {
    return clipLikeDislikeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) {
    if (clipLikeDislikeSuccess != null) {
      return clipLikeDislikeSuccess(this);
    }
    return orElse();
  }
}

abstract class ClipLikeDislikeSuccess implements ClipsState {
  const factory ClipLikeDislikeSuccess() = _$ClipLikeDislikeSuccess;
}

/// @nodoc
abstract class _$$CommmentSuccessCopyWith<$Res> {
  factory _$$CommmentSuccessCopyWith(
          _$CommmentSuccess value, $Res Function(_$CommmentSuccess) then) =
      __$$CommmentSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CommmentSuccessCopyWithImpl<$Res>
    extends _$ClipsStateCopyWithImpl<$Res, _$CommmentSuccess>
    implements _$$CommmentSuccessCopyWith<$Res> {
  __$$CommmentSuccessCopyWithImpl(
      _$CommmentSuccess _value, $Res Function(_$CommmentSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CommmentSuccess implements CommmentSuccess {
  const _$CommmentSuccess();

  @override
  String toString() {
    return 'ClipsState.commmentSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CommmentSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failureState,
    required TResult Function(QuickClipsModel quickClipsModel) success,
    required TResult Function(CommentModel commentModel) getCommentByIdSuccess,
    required TResult Function() clipLikeDislikeSuccess,
    required TResult Function() commmentSuccess,
  }) {
    return commmentSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failureState,
    TResult? Function(QuickClipsModel quickClipsModel)? success,
    TResult? Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult? Function()? clipLikeDislikeSuccess,
    TResult? Function()? commmentSuccess,
  }) {
    return commmentSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failureState,
    TResult Function(QuickClipsModel quickClipsModel)? success,
    TResult Function(CommentModel commentModel)? getCommentByIdSuccess,
    TResult Function()? clipLikeDislikeSuccess,
    TResult Function()? commmentSuccess,
    required TResult orElse(),
  }) {
    if (commmentSuccess != null) {
      return commmentSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(GetCommentByIdSuccess value)
        getCommentByIdSuccess,
    required TResult Function(ClipLikeDislikeSuccess value)
        clipLikeDislikeSuccess,
    required TResult Function(CommmentSuccess value) commmentSuccess,
  }) {
    return commmentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult? Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult? Function(CommmentSuccess value)? commmentSuccess,
  }) {
    return commmentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(GetCommentByIdSuccess value)? getCommentByIdSuccess,
    TResult Function(ClipLikeDislikeSuccess value)? clipLikeDislikeSuccess,
    TResult Function(CommmentSuccess value)? commmentSuccess,
    required TResult orElse(),
  }) {
    if (commmentSuccess != null) {
      return commmentSuccess(this);
    }
    return orElse();
  }
}

abstract class CommmentSuccess implements ClipsState {
  const factory CommmentSuccess() = _$CommmentSuccess;
}
