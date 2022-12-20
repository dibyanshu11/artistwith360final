// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'arpbrowser_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArpbrowserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) getDataChanged,
    required TResult Function() getSearch,
    required TResult Function(dynamic ids, String text) morelikeThisChaneged,
    required TResult Function(String type, String documentId) addToListChanged,
    required TResult Function(String type, String documentId) getSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? getDataChanged,
    TResult? Function()? getSearch,
    TResult? Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult? Function(String type, String documentId)? addToListChanged,
    TResult? Function(String type, String documentId)? getSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? getDataChanged,
    TResult Function()? getSearch,
    TResult Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult Function(String type, String documentId)? addToListChanged,
    TResult Function(String type, String documentId)? getSearchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(MorelikeThisChaneged value) morelikeThisChaneged,
    required TResult Function(AddToListChanged value) addToListChanged,
    required TResult Function(GetSearchList value) getSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(GetSearch value)? getSearch,
    TResult? Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult? Function(AddToListChanged value)? addToListChanged,
    TResult? Function(GetSearchList value)? getSearchList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult Function(AddToListChanged value)? addToListChanged,
    TResult Function(GetSearchList value)? getSearchList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArpbrowserEventCopyWith<$Res> {
  factory $ArpbrowserEventCopyWith(
          ArpbrowserEvent value, $Res Function(ArpbrowserEvent) then) =
      _$ArpbrowserEventCopyWithImpl<$Res, ArpbrowserEvent>;
}

/// @nodoc
class _$ArpbrowserEventCopyWithImpl<$Res, $Val extends ArpbrowserEvent>
    implements $ArpbrowserEventCopyWith<$Res> {
  _$ArpbrowserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDataCopyWith<$Res> {
  factory _$$GetDataCopyWith(_$GetData value, $Res Function(_$GetData) then) =
      __$$GetDataCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$GetDataCopyWithImpl<$Res>
    extends _$ArpbrowserEventCopyWithImpl<$Res, _$GetData>
    implements _$$GetDataCopyWith<$Res> {
  __$$GetDataCopyWithImpl(_$GetData _value, $Res Function(_$GetData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$GetData(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetData with DiagnosticableTreeMixin implements GetData {
  const _$GetData(this.text);

  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserEvent.getDataChanged(text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserEvent.getDataChanged'))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetData &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataCopyWith<_$GetData> get copyWith =>
      __$$GetDataCopyWithImpl<_$GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) getDataChanged,
    required TResult Function() getSearch,
    required TResult Function(dynamic ids, String text) morelikeThisChaneged,
    required TResult Function(String type, String documentId) addToListChanged,
    required TResult Function(String type, String documentId) getSearchList,
  }) {
    return getDataChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? getDataChanged,
    TResult? Function()? getSearch,
    TResult? Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult? Function(String type, String documentId)? addToListChanged,
    TResult? Function(String type, String documentId)? getSearchList,
  }) {
    return getDataChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? getDataChanged,
    TResult Function()? getSearch,
    TResult Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult Function(String type, String documentId)? addToListChanged,
    TResult Function(String type, String documentId)? getSearchList,
    required TResult orElse(),
  }) {
    if (getDataChanged != null) {
      return getDataChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(MorelikeThisChaneged value) morelikeThisChaneged,
    required TResult Function(AddToListChanged value) addToListChanged,
    required TResult Function(GetSearchList value) getSearchList,
  }) {
    return getDataChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(GetSearch value)? getSearch,
    TResult? Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult? Function(AddToListChanged value)? addToListChanged,
    TResult? Function(GetSearchList value)? getSearchList,
  }) {
    return getDataChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult Function(AddToListChanged value)? addToListChanged,
    TResult Function(GetSearchList value)? getSearchList,
    required TResult orElse(),
  }) {
    if (getDataChanged != null) {
      return getDataChanged(this);
    }
    return orElse();
  }
}

abstract class GetData implements ArpbrowserEvent {
  const factory GetData(final String text) = _$GetData;

  String get text;
  @JsonKey(ignore: true)
  _$$GetDataCopyWith<_$GetData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSearchCopyWith<$Res> {
  factory _$$GetSearchCopyWith(
          _$GetSearch value, $Res Function(_$GetSearch) then) =
      __$$GetSearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSearchCopyWithImpl<$Res>
    extends _$ArpbrowserEventCopyWithImpl<$Res, _$GetSearch>
    implements _$$GetSearchCopyWith<$Res> {
  __$$GetSearchCopyWithImpl(
      _$GetSearch _value, $Res Function(_$GetSearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetSearch with DiagnosticableTreeMixin implements GetSearch {
  const _$GetSearch();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserEvent.getSearch()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ArpbrowserEvent.getSearch'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) getDataChanged,
    required TResult Function() getSearch,
    required TResult Function(dynamic ids, String text) morelikeThisChaneged,
    required TResult Function(String type, String documentId) addToListChanged,
    required TResult Function(String type, String documentId) getSearchList,
  }) {
    return getSearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? getDataChanged,
    TResult? Function()? getSearch,
    TResult? Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult? Function(String type, String documentId)? addToListChanged,
    TResult? Function(String type, String documentId)? getSearchList,
  }) {
    return getSearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? getDataChanged,
    TResult Function()? getSearch,
    TResult Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult Function(String type, String documentId)? addToListChanged,
    TResult Function(String type, String documentId)? getSearchList,
    required TResult orElse(),
  }) {
    if (getSearch != null) {
      return getSearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(MorelikeThisChaneged value) morelikeThisChaneged,
    required TResult Function(AddToListChanged value) addToListChanged,
    required TResult Function(GetSearchList value) getSearchList,
  }) {
    return getSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(GetSearch value)? getSearch,
    TResult? Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult? Function(AddToListChanged value)? addToListChanged,
    TResult? Function(GetSearchList value)? getSearchList,
  }) {
    return getSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult Function(AddToListChanged value)? addToListChanged,
    TResult Function(GetSearchList value)? getSearchList,
    required TResult orElse(),
  }) {
    if (getSearch != null) {
      return getSearch(this);
    }
    return orElse();
  }
}

abstract class GetSearch implements ArpbrowserEvent {
  const factory GetSearch() = _$GetSearch;
}

/// @nodoc
abstract class _$$MorelikeThisChanegedCopyWith<$Res> {
  factory _$$MorelikeThisChanegedCopyWith(_$MorelikeThisChaneged value,
          $Res Function(_$MorelikeThisChaneged) then) =
      __$$MorelikeThisChanegedCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic ids, String text});
}

/// @nodoc
class __$$MorelikeThisChanegedCopyWithImpl<$Res>
    extends _$ArpbrowserEventCopyWithImpl<$Res, _$MorelikeThisChaneged>
    implements _$$MorelikeThisChanegedCopyWith<$Res> {
  __$$MorelikeThisChanegedCopyWithImpl(_$MorelikeThisChaneged _value,
      $Res Function(_$MorelikeThisChaneged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = freezed,
    Object? text = null,
  }) {
    return _then(_$MorelikeThisChaneged(
      freezed == ids
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MorelikeThisChaneged
    with DiagnosticableTreeMixin
    implements MorelikeThisChaneged {
  const _$MorelikeThisChaneged(this.ids, this.text);

  @override
  final dynamic ids;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserEvent.morelikeThisChaneged(ids: $ids, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserEvent.morelikeThisChaneged'))
      ..add(DiagnosticsProperty('ids', ids))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MorelikeThisChaneged &&
            const DeepCollectionEquality().equals(other.ids, ids) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ids), text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MorelikeThisChanegedCopyWith<_$MorelikeThisChaneged> get copyWith =>
      __$$MorelikeThisChanegedCopyWithImpl<_$MorelikeThisChaneged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) getDataChanged,
    required TResult Function() getSearch,
    required TResult Function(dynamic ids, String text) morelikeThisChaneged,
    required TResult Function(String type, String documentId) addToListChanged,
    required TResult Function(String type, String documentId) getSearchList,
  }) {
    return morelikeThisChaneged(ids, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? getDataChanged,
    TResult? Function()? getSearch,
    TResult? Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult? Function(String type, String documentId)? addToListChanged,
    TResult? Function(String type, String documentId)? getSearchList,
  }) {
    return morelikeThisChaneged?.call(ids, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? getDataChanged,
    TResult Function()? getSearch,
    TResult Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult Function(String type, String documentId)? addToListChanged,
    TResult Function(String type, String documentId)? getSearchList,
    required TResult orElse(),
  }) {
    if (morelikeThisChaneged != null) {
      return morelikeThisChaneged(ids, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(MorelikeThisChaneged value) morelikeThisChaneged,
    required TResult Function(AddToListChanged value) addToListChanged,
    required TResult Function(GetSearchList value) getSearchList,
  }) {
    return morelikeThisChaneged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(GetSearch value)? getSearch,
    TResult? Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult? Function(AddToListChanged value)? addToListChanged,
    TResult? Function(GetSearchList value)? getSearchList,
  }) {
    return morelikeThisChaneged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult Function(AddToListChanged value)? addToListChanged,
    TResult Function(GetSearchList value)? getSearchList,
    required TResult orElse(),
  }) {
    if (morelikeThisChaneged != null) {
      return morelikeThisChaneged(this);
    }
    return orElse();
  }
}

abstract class MorelikeThisChaneged implements ArpbrowserEvent {
  const factory MorelikeThisChaneged(final dynamic ids, final String text) =
      _$MorelikeThisChaneged;

  dynamic get ids;
  String get text;
  @JsonKey(ignore: true)
  _$$MorelikeThisChanegedCopyWith<_$MorelikeThisChaneged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToListChangedCopyWith<$Res> {
  factory _$$AddToListChangedCopyWith(
          _$AddToListChanged value, $Res Function(_$AddToListChanged) then) =
      __$$AddToListChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, String documentId});
}

/// @nodoc
class __$$AddToListChangedCopyWithImpl<$Res>
    extends _$ArpbrowserEventCopyWithImpl<$Res, _$AddToListChanged>
    implements _$$AddToListChangedCopyWith<$Res> {
  __$$AddToListChangedCopyWithImpl(
      _$AddToListChanged _value, $Res Function(_$AddToListChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? documentId = null,
  }) {
    return _then(_$AddToListChanged(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToListChanged
    with DiagnosticableTreeMixin
    implements AddToListChanged {
  const _$AddToListChanged(this.type, this.documentId);

  @override
  final String type;
  @override
  final String documentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserEvent.addToListChanged(type: $type, documentId: $documentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserEvent.addToListChanged'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('documentId', documentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToListChanged &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, documentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToListChangedCopyWith<_$AddToListChanged> get copyWith =>
      __$$AddToListChangedCopyWithImpl<_$AddToListChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) getDataChanged,
    required TResult Function() getSearch,
    required TResult Function(dynamic ids, String text) morelikeThisChaneged,
    required TResult Function(String type, String documentId) addToListChanged,
    required TResult Function(String type, String documentId) getSearchList,
  }) {
    return addToListChanged(type, documentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? getDataChanged,
    TResult? Function()? getSearch,
    TResult? Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult? Function(String type, String documentId)? addToListChanged,
    TResult? Function(String type, String documentId)? getSearchList,
  }) {
    return addToListChanged?.call(type, documentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? getDataChanged,
    TResult Function()? getSearch,
    TResult Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult Function(String type, String documentId)? addToListChanged,
    TResult Function(String type, String documentId)? getSearchList,
    required TResult orElse(),
  }) {
    if (addToListChanged != null) {
      return addToListChanged(type, documentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(MorelikeThisChaneged value) morelikeThisChaneged,
    required TResult Function(AddToListChanged value) addToListChanged,
    required TResult Function(GetSearchList value) getSearchList,
  }) {
    return addToListChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(GetSearch value)? getSearch,
    TResult? Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult? Function(AddToListChanged value)? addToListChanged,
    TResult? Function(GetSearchList value)? getSearchList,
  }) {
    return addToListChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult Function(AddToListChanged value)? addToListChanged,
    TResult Function(GetSearchList value)? getSearchList,
    required TResult orElse(),
  }) {
    if (addToListChanged != null) {
      return addToListChanged(this);
    }
    return orElse();
  }
}

abstract class AddToListChanged implements ArpbrowserEvent {
  const factory AddToListChanged(final String type, final String documentId) =
      _$AddToListChanged;

  String get type;
  String get documentId;
  @JsonKey(ignore: true)
  _$$AddToListChangedCopyWith<_$AddToListChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSearchListCopyWith<$Res> {
  factory _$$GetSearchListCopyWith(
          _$GetSearchList value, $Res Function(_$GetSearchList) then) =
      __$$GetSearchListCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, String documentId});
}

/// @nodoc
class __$$GetSearchListCopyWithImpl<$Res>
    extends _$ArpbrowserEventCopyWithImpl<$Res, _$GetSearchList>
    implements _$$GetSearchListCopyWith<$Res> {
  __$$GetSearchListCopyWithImpl(
      _$GetSearchList _value, $Res Function(_$GetSearchList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? documentId = null,
  }) {
    return _then(_$GetSearchList(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == documentId
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSearchList with DiagnosticableTreeMixin implements GetSearchList {
  const _$GetSearchList(this.type, this.documentId);

  @override
  final String type;
  @override
  final String documentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserEvent.getSearchList(type: $type, documentId: $documentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserEvent.getSearchList'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('documentId', documentId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearchList &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.documentId, documentId) ||
                other.documentId == documentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, documentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSearchListCopyWith<_$GetSearchList> get copyWith =>
      __$$GetSearchListCopyWithImpl<_$GetSearchList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) getDataChanged,
    required TResult Function() getSearch,
    required TResult Function(dynamic ids, String text) morelikeThisChaneged,
    required TResult Function(String type, String documentId) addToListChanged,
    required TResult Function(String type, String documentId) getSearchList,
  }) {
    return getSearchList(type, documentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? getDataChanged,
    TResult? Function()? getSearch,
    TResult? Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult? Function(String type, String documentId)? addToListChanged,
    TResult? Function(String type, String documentId)? getSearchList,
  }) {
    return getSearchList?.call(type, documentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? getDataChanged,
    TResult Function()? getSearch,
    TResult Function(dynamic ids, String text)? morelikeThisChaneged,
    TResult Function(String type, String documentId)? addToListChanged,
    TResult Function(String type, String documentId)? getSearchList,
    required TResult orElse(),
  }) {
    if (getSearchList != null) {
      return getSearchList(type, documentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetData value) getDataChanged,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(MorelikeThisChaneged value) morelikeThisChaneged,
    required TResult Function(AddToListChanged value) addToListChanged,
    required TResult Function(GetSearchList value) getSearchList,
  }) {
    return getSearchList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetData value)? getDataChanged,
    TResult? Function(GetSearch value)? getSearch,
    TResult? Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult? Function(AddToListChanged value)? addToListChanged,
    TResult? Function(GetSearchList value)? getSearchList,
  }) {
    return getSearchList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetData value)? getDataChanged,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(MorelikeThisChaneged value)? morelikeThisChaneged,
    TResult Function(AddToListChanged value)? addToListChanged,
    TResult Function(GetSearchList value)? getSearchList,
    required TResult orElse(),
  }) {
    if (getSearchList != null) {
      return getSearchList(this);
    }
    return orElse();
  }
}

abstract class GetSearchList implements ArpbrowserEvent {
  const factory GetSearchList(final String type, final String documentId) =
      _$GetSearchList;

  String get type;
  String get documentId;
  @JsonKey(ignore: true)
  _$$GetSearchListCopyWith<_$GetSearchList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ArpbrowserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArpbrowserStateCopyWith<$Res> {
  factory $ArpbrowserStateCopyWith(
          ArpbrowserState value, $Res Function(ArpbrowserState) then) =
      _$ArpbrowserStateCopyWithImpl<$Res, ArpbrowserState>;
}

/// @nodoc
class _$ArpbrowserStateCopyWithImpl<$Res, $Val extends ArpbrowserState>
    implements $ArpbrowserStateCopyWith<$Res> {
  _$ArpbrowserStateCopyWithImpl(this._value, this._then);

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
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$Initials>
    implements _$$InitialsCopyWith<$Res> {
  __$$InitialsCopyWithImpl(_$Initials _value, $Res Function(_$Initials) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initials with DiagnosticableTreeMixin implements Initials {
  const _$Initials();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ArpbrowserState.initial'));
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
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
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
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initials implements ArpbrowserState {
  const factory Initials() = _$Initials;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading with DiagnosticableTreeMixin implements Loading {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ArpbrowserState.loading'));
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
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
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
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ArpbrowserState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$SearchStateCopyWith<$Res> {
  factory _$$SearchStateCopyWith(
          _$SearchState value, $Res Function(_$SearchState) then) =
      __$$SearchStateCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchModel searchModel});
}

/// @nodoc
class __$$SearchStateCopyWithImpl<$Res>
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$SearchState>
    implements _$$SearchStateCopyWith<$Res> {
  __$$SearchStateCopyWithImpl(
      _$SearchState _value, $Res Function(_$SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchModel = null,
  }) {
    return _then(_$SearchState(
      null == searchModel
          ? _value.searchModel
          : searchModel // ignore: cast_nullable_to_non_nullable
              as SearchModel,
    ));
  }
}

/// @nodoc

class _$SearchState with DiagnosticableTreeMixin implements SearchState {
  const _$SearchState(this.searchModel);

  @override
  final SearchModel searchModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.searchState(searchModel: $searchModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserState.searchState'))
      ..add(DiagnosticsProperty('searchModel', searchModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchState &&
            (identical(other.searchModel, searchModel) ||
                other.searchModel == searchModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchStateCopyWith<_$SearchState> get copyWith =>
      __$$SearchStateCopyWithImpl<_$SearchState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return searchState(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return searchState?.call(searchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
    required TResult orElse(),
  }) {
    if (searchState != null) {
      return searchState(searchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return searchState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return searchState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (searchState != null) {
      return searchState(this);
    }
    return orElse();
  }
}

abstract class SearchState implements ArpbrowserState {
  const factory SearchState(final SearchModel searchModel) = _$SearchState;

  SearchModel get searchModel;
  @JsonKey(ignore: true)
  _$$SearchStateCopyWith<_$SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDataSearchCopyWith<$Res> {
  factory _$$GetDataSearchCopyWith(
          _$GetDataSearch value, $Res Function(_$GetDataSearch) then) =
      __$$GetDataSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({ArpSearchModel arpSearchModel});
}

/// @nodoc
class __$$GetDataSearchCopyWithImpl<$Res>
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$GetDataSearch>
    implements _$$GetDataSearchCopyWith<$Res> {
  __$$GetDataSearchCopyWithImpl(
      _$GetDataSearch _value, $Res Function(_$GetDataSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arpSearchModel = null,
  }) {
    return _then(_$GetDataSearch(
      null == arpSearchModel
          ? _value.arpSearchModel
          : arpSearchModel // ignore: cast_nullable_to_non_nullable
              as ArpSearchModel,
    ));
  }
}

/// @nodoc

class _$GetDataSearch with DiagnosticableTreeMixin implements GetDataSearch {
  const _$GetDataSearch(this.arpSearchModel);

  @override
  final ArpSearchModel arpSearchModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.getDataSearch(arpSearchModel: $arpSearchModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserState.getDataSearch'))
      ..add(DiagnosticsProperty('arpSearchModel', arpSearchModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDataSearch &&
            (identical(other.arpSearchModel, arpSearchModel) ||
                other.arpSearchModel == arpSearchModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arpSearchModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDataSearchCopyWith<_$GetDataSearch> get copyWith =>
      __$$GetDataSearchCopyWithImpl<_$GetDataSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return getDataSearch(arpSearchModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return getDataSearch?.call(arpSearchModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
    required TResult orElse(),
  }) {
    if (getDataSearch != null) {
      return getDataSearch(arpSearchModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return getDataSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return getDataSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (getDataSearch != null) {
      return getDataSearch(this);
    }
    return orElse();
  }
}

abstract class GetDataSearch implements ArpbrowserState {
  const factory GetDataSearch(final ArpSearchModel arpSearchModel) =
      _$GetDataSearch;

  ArpSearchModel get arpSearchModel;
  @JsonKey(ignore: true)
  _$$GetDataSearchCopyWith<_$GetDataSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MorelikeThisSuccessCopyWith<$Res> {
  factory _$$MorelikeThisSuccessCopyWith(_$MorelikeThisSuccess value,
          $Res Function(_$MorelikeThisSuccess) then) =
      __$$MorelikeThisSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Morelikethismodel morelikethismodel});
}

/// @nodoc
class __$$MorelikeThisSuccessCopyWithImpl<$Res>
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$MorelikeThisSuccess>
    implements _$$MorelikeThisSuccessCopyWith<$Res> {
  __$$MorelikeThisSuccessCopyWithImpl(
      _$MorelikeThisSuccess _value, $Res Function(_$MorelikeThisSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? morelikethismodel = null,
  }) {
    return _then(_$MorelikeThisSuccess(
      null == morelikethismodel
          ? _value.morelikethismodel
          : morelikethismodel // ignore: cast_nullable_to_non_nullable
              as Morelikethismodel,
    ));
  }
}

/// @nodoc

class _$MorelikeThisSuccess
    with DiagnosticableTreeMixin
    implements MorelikeThisSuccess {
  const _$MorelikeThisSuccess(this.morelikethismodel);

  @override
  final Morelikethismodel morelikethismodel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.morelikeThisSucess(morelikethismodel: $morelikethismodel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserState.morelikeThisSucess'))
      ..add(DiagnosticsProperty('morelikethismodel', morelikethismodel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MorelikeThisSuccess &&
            (identical(other.morelikethismodel, morelikethismodel) ||
                other.morelikethismodel == morelikethismodel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, morelikethismodel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MorelikeThisSuccessCopyWith<_$MorelikeThisSuccess> get copyWith =>
      __$$MorelikeThisSuccessCopyWithImpl<_$MorelikeThisSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return morelikeThisSucess(morelikethismodel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return morelikeThisSucess?.call(morelikethismodel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
    required TResult orElse(),
  }) {
    if (morelikeThisSucess != null) {
      return morelikeThisSucess(morelikethismodel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return morelikeThisSucess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return morelikeThisSucess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (morelikeThisSucess != null) {
      return morelikeThisSucess(this);
    }
    return orElse();
  }
}

abstract class MorelikeThisSuccess implements ArpbrowserState {
  const factory MorelikeThisSuccess(final Morelikethismodel morelikethismodel) =
      _$MorelikeThisSuccess;

  Morelikethismodel get morelikethismodel;
  @JsonKey(ignore: true)
  _$$MorelikeThisSuccessCopyWith<_$MorelikeThisSuccess> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$FailureState>
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

class _$FailureState with DiagnosticableTreeMixin implements FailureState {
  const _$FailureState(this.authFailureOrSuccessOption);

  @override
  final Option<Either<Failure, Unit>> authFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.failureState(authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserState.failureState'))
      ..add(DiagnosticsProperty(
          'authFailureOrSuccessOption', authFailureOrSuccessOption));
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
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return failureState(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return failureState?.call(authFailureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
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
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return failureState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return failureState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (failureState != null) {
      return failureState(this);
    }
    return orElse();
  }
}

abstract class FailureState implements ArpbrowserState {
  const factory FailureState(
          final Option<Either<Failure, Unit>> authFailureOrSuccessOption) =
      _$FailureState;

  Option<Either<Failure, Unit>> get authFailureOrSuccessOption;
  @JsonKey(ignore: true)
  _$$FailureStateCopyWith<_$FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({ArpBrowserModel arpBrowserModel});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arpBrowserModel = null,
  }) {
    return _then(_$Success(
      null == arpBrowserModel
          ? _value.arpBrowserModel
          : arpBrowserModel // ignore: cast_nullable_to_non_nullable
              as ArpBrowserModel,
    ));
  }
}

/// @nodoc

class _$Success with DiagnosticableTreeMixin implements Success {
  const _$Success(this.arpBrowserModel);

  @override
  final ArpBrowserModel arpBrowserModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.success(arpBrowserModel: $arpBrowserModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ArpbrowserState.success'))
      ..add(DiagnosticsProperty('arpBrowserModel', arpBrowserModel));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            (identical(other.arpBrowserModel, arpBrowserModel) ||
                other.arpBrowserModel == arpBrowserModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arpBrowserModel);

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
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return success(arpBrowserModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return success?.call(arpBrowserModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(arpBrowserModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements ArpbrowserState {
  const factory Success(final ArpBrowserModel arpBrowserModel) = _$Success;

  ArpBrowserModel get arpBrowserModel;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToListSuccessCopyWith<$Res> {
  factory _$$AddToListSuccessCopyWith(
          _$AddToListSuccess value, $Res Function(_$AddToListSuccess) then) =
      __$$AddToListSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddToListSuccessCopyWithImpl<$Res>
    extends _$ArpbrowserStateCopyWithImpl<$Res, _$AddToListSuccess>
    implements _$$AddToListSuccessCopyWith<$Res> {
  __$$AddToListSuccessCopyWithImpl(
      _$AddToListSuccess _value, $Res Function(_$AddToListSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddToListSuccess
    with DiagnosticableTreeMixin
    implements AddToListSuccess {
  const _$AddToListSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ArpbrowserState.addToListSuccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ArpbrowserState.addToListSuccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddToListSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(SearchModel searchModel) searchState,
    required TResult Function(ArpSearchModel arpSearchModel) getDataSearch,
    required TResult Function(Morelikethismodel morelikethismodel)
        morelikeThisSucess,
    required TResult Function(
            Option<Either<Failure, Unit>> authFailureOrSuccessOption)
        failureState,
    required TResult Function(ArpBrowserModel arpBrowserModel) success,
    required TResult Function() addToListSuccess,
  }) {
    return addToListSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(SearchModel searchModel)? searchState,
    TResult? Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult? Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult? Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult? Function(ArpBrowserModel arpBrowserModel)? success,
    TResult? Function()? addToListSuccess,
  }) {
    return addToListSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(SearchModel searchModel)? searchState,
    TResult Function(ArpSearchModel arpSearchModel)? getDataSearch,
    TResult Function(Morelikethismodel morelikethismodel)? morelikeThisSucess,
    TResult Function(Option<Either<Failure, Unit>> authFailureOrSuccessOption)?
        failureState,
    TResult Function(ArpBrowserModel arpBrowserModel)? success,
    TResult Function()? addToListSuccess,
    required TResult orElse(),
  }) {
    if (addToListSuccess != null) {
      return addToListSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initials value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(SearchState value) searchState,
    required TResult Function(GetDataSearch value) getDataSearch,
    required TResult Function(MorelikeThisSuccess value) morelikeThisSucess,
    required TResult Function(FailureState value) failureState,
    required TResult Function(Success value) success,
    required TResult Function(AddToListSuccess value) addToListSuccess,
  }) {
    return addToListSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initials value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(SearchState value)? searchState,
    TResult? Function(GetDataSearch value)? getDataSearch,
    TResult? Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult? Function(FailureState value)? failureState,
    TResult? Function(Success value)? success,
    TResult? Function(AddToListSuccess value)? addToListSuccess,
  }) {
    return addToListSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initials value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(SearchState value)? searchState,
    TResult Function(GetDataSearch value)? getDataSearch,
    TResult Function(MorelikeThisSuccess value)? morelikeThisSucess,
    TResult Function(FailureState value)? failureState,
    TResult Function(Success value)? success,
    TResult Function(AddToListSuccess value)? addToListSuccess,
    required TResult orElse(),
  }) {
    if (addToListSuccess != null) {
      return addToListSuccess(this);
    }
    return orElse();
  }
}

abstract class AddToListSuccess implements ArpbrowserState {
  const factory AddToListSuccess() = _$AddToListSuccess;
}
