// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'morelikethis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Morelikethismodel _$MorelikethismodelFromJson(Map<String, dynamic> json) {
  return _Morelikethismodel.fromJson(json);
}

/// @nodoc
mixin _$Morelikethismodel {
  int? get returnCode => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;
  String? get returnMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MorelikethismodelCopyWith<Morelikethismodel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MorelikethismodelCopyWith<$Res> {
  factory $MorelikethismodelCopyWith(
          Morelikethismodel value, $Res Function(Morelikethismodel) then) =
      _$MorelikethismodelCopyWithImpl<$Res, Morelikethismodel>;
  @useResult
  $Res call({int? returnCode, Data? data, String? returnMessage});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$MorelikethismodelCopyWithImpl<$Res, $Val extends Morelikethismodel>
    implements $MorelikethismodelCopyWith<$Res> {
  _$MorelikethismodelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnCode = freezed,
    Object? data = freezed,
    Object? returnMessage = freezed,
  }) {
    return _then(_value.copyWith(
      returnCode: freezed == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      returnMessage: freezed == returnMessage
          ? _value.returnMessage
          : returnMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MorelikethismodelCopyWith<$Res>
    implements $MorelikethismodelCopyWith<$Res> {
  factory _$$_MorelikethismodelCopyWith(_$_Morelikethismodel value,
          $Res Function(_$_Morelikethismodel) then) =
      __$$_MorelikethismodelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? returnCode, Data? data, String? returnMessage});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_MorelikethismodelCopyWithImpl<$Res>
    extends _$MorelikethismodelCopyWithImpl<$Res, _$_Morelikethismodel>
    implements _$$_MorelikethismodelCopyWith<$Res> {
  __$$_MorelikethismodelCopyWithImpl(
      _$_Morelikethismodel _value, $Res Function(_$_Morelikethismodel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? returnCode = freezed,
    Object? data = freezed,
    Object? returnMessage = freezed,
  }) {
    return _then(_$_Morelikethismodel(
      returnCode: freezed == returnCode
          ? _value.returnCode
          : returnCode // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
      returnMessage: freezed == returnMessage
          ? _value.returnMessage
          : returnMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Morelikethismodel implements _Morelikethismodel {
  const _$_Morelikethismodel({this.returnCode, this.data, this.returnMessage});

  factory _$_Morelikethismodel.fromJson(Map<String, dynamic> json) =>
      _$$_MorelikethismodelFromJson(json);

  @override
  final int? returnCode;
  @override
  final Data? data;
  @override
  final String? returnMessage;

  @override
  String toString() {
    return 'Morelikethismodel(returnCode: $returnCode, data: $data, returnMessage: $returnMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Morelikethismodel &&
            (identical(other.returnCode, returnCode) ||
                other.returnCode == returnCode) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.returnMessage, returnMessage) ||
                other.returnMessage == returnMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, returnCode, data, returnMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MorelikethismodelCopyWith<_$_Morelikethismodel> get copyWith =>
      __$$_MorelikethismodelCopyWithImpl<_$_Morelikethismodel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MorelikethismodelToJson(
      this,
    );
  }
}

abstract class _Morelikethismodel implements Morelikethismodel {
  const factory _Morelikethismodel(
      {final int? returnCode,
      final Data? data,
      final String? returnMessage}) = _$_Morelikethismodel;

  factory _Morelikethismodel.fromJson(Map<String, dynamic> json) =
      _$_Morelikethismodel.fromJson;

  @override
  int? get returnCode;
  @override
  Data? get data;
  @override
  String? get returnMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MorelikethismodelCopyWith<_$_Morelikethismodel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<Datum>? get data => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({List<Datum>? data, int? total});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum>? data, int? total});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_Data(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({final List<Datum>? data, this.total}) : _data = data;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? total;

  @override
  String toString() {
    return 'Data(data: $data, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data({final List<Datum>? data, final int? total}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<Datum>? get data;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  DateTime? get releaseDate => throw _privateConstructorUsedError;
  String? get genre => throw _privateConstructorUsedError;
  dynamic get video => throw _privateConstructorUsedError;
  String? get s3_image_url => throw _privateConstructorUsedError;
  String? get s3_video_url => throw _privateConstructorUsedError;
  String? get s3_logo_url => throw _privateConstructorUsedError;
  Trailer? get trailer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? city,
      String? state,
      String? logo,
      DateTime? releaseDate,
      String? genre,
      dynamic video,
      String? s3_image_url,
      String? s3_video_url,
      String? s3_logo_url,
      Trailer? trailer});

  $TrailerCopyWith<$Res>? get trailer;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? logo = freezed,
    Object? releaseDate = freezed,
    Object? genre = freezed,
    Object? video = null,
    Object? s3_image_url = freezed,
    Object? s3_video_url = freezed,
    Object? s3_logo_url = freezed,
    Object? trailer = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as dynamic,
      s3_image_url: freezed == s3_image_url
          ? _value.s3_image_url
          : s3_image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_video_url: freezed == s3_video_url
          ? _value.s3_video_url
          : s3_video_url // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_logo_url: freezed == s3_logo_url
          ? _value.s3_logo_url
          : s3_logo_url // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as Trailer?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrailerCopyWith<$Res>? get trailer {
    if (_value.trailer == null) {
      return null;
    }

    return $TrailerCopyWith<$Res>(_value.trailer!, (value) {
      return _then(_value.copyWith(trailer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? city,
      String? state,
      String? logo,
      DateTime? releaseDate,
      String? genre,
      dynamic video,
      String? s3_image_url,
      String? s3_video_url,
      String? s3_logo_url,
      Trailer? trailer});

  @override
  $TrailerCopyWith<$Res>? get trailer;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? logo = freezed,
    Object? releaseDate = freezed,
    Object? genre = freezed,
    Object? video = null,
    Object? s3_image_url = freezed,
    Object? s3_video_url = freezed,
    Object? s3_logo_url = freezed,
    Object? trailer = freezed,
  }) {
    return _then(_$_Datum(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: freezed == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      genre: freezed == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String?,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as dynamic,
      s3_image_url: freezed == s3_image_url
          ? _value.s3_image_url
          : s3_image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_video_url: freezed == s3_video_url
          ? _value.s3_video_url
          : s3_video_url // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_logo_url: freezed == s3_logo_url
          ? _value.s3_logo_url
          : s3_logo_url // ignore: cast_nullable_to_non_nullable
              as String?,
      trailer: freezed == trailer
          ? _value.trailer
          : trailer // ignore: cast_nullable_to_non_nullable
              as Trailer?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.id,
      this.title,
      this.city,
      this.state,
      this.logo,
      this.releaseDate,
      this.genre,
      this.video,
      this.s3_image_url,
      this.s3_video_url,
      this.s3_logo_url,
      this.trailer});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? logo;
  @override
  final DateTime? releaseDate;
  @override
  final String? genre;
  @override
  final dynamic video;
  @override
  final String? s3_image_url;
  @override
  final String? s3_video_url;
  @override
  final String? s3_logo_url;
  @override
  final Trailer? trailer;

  @override
  String toString() {
    return 'Datum(id: $id, title: $title, city: $city, state: $state, logo: $logo, releaseDate: $releaseDate, genre: $genre, video: $video, s3_image_url: $s3_image_url, s3_video_url: $s3_video_url, s3_logo_url: $s3_logo_url, trailer: $trailer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.genre, genre) || other.genre == genre) &&
            const DeepCollectionEquality().equals(other.video, video) &&
            (identical(other.s3_image_url, s3_image_url) ||
                other.s3_image_url == s3_image_url) &&
            (identical(other.s3_video_url, s3_video_url) ||
                other.s3_video_url == s3_video_url) &&
            (identical(other.s3_logo_url, s3_logo_url) ||
                other.s3_logo_url == s3_logo_url) &&
            (identical(other.trailer, trailer) || other.trailer == trailer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      city,
      state,
      logo,
      releaseDate,
      genre,
      const DeepCollectionEquality().hash(video),
      s3_image_url,
      s3_video_url,
      s3_logo_url,
      trailer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final int? id,
      final String? title,
      final String? city,
      final String? state,
      final String? logo,
      final DateTime? releaseDate,
      final String? genre,
      final dynamic video,
      final String? s3_image_url,
      final String? s3_video_url,
      final String? s3_logo_url,
      final Trailer? trailer}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get logo;
  @override
  DateTime? get releaseDate;
  @override
  String? get genre;
  @override
  dynamic get video;
  @override
  String? get s3_image_url;
  @override
  String? get s3_video_url;
  @override
  String? get s3_logo_url;
  @override
  Trailer? get trailer;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

Trailer _$TrailerFromJson(Map<String, dynamic> json) {
  return _Trailer.fromJson(json);
}

/// @nodoc
mixin _$Trailer {
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int? get documentaryId => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get video => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get s3_image_url => throw _privateConstructorUsedError;
  String? get s3_video_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrailerCopyWith<Trailer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrailerCopyWith<$Res> {
  factory $TrailerCopyWith(Trailer value, $Res Function(Trailer) then) =
      _$TrailerCopyWithImpl<$Res, Trailer>;
  @useResult
  $Res call(
      {int? id,
      String? type,
      int? documentaryId,
      String? image,
      String? video,
      String? description,
      String? s3_image_url,
      String? s3_video_url});
}

/// @nodoc
class _$TrailerCopyWithImpl<$Res, $Val extends Trailer>
    implements $TrailerCopyWith<$Res> {
  _$TrailerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? documentaryId = freezed,
    Object? image = freezed,
    Object? video = freezed,
    Object? description = freezed,
    Object? s3_image_url = freezed,
    Object? s3_video_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      documentaryId: freezed == documentaryId
          ? _value.documentaryId
          : documentaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_image_url: freezed == s3_image_url
          ? _value.s3_image_url
          : s3_image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_video_url: freezed == s3_video_url
          ? _value.s3_video_url
          : s3_video_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TrailerCopyWith<$Res> implements $TrailerCopyWith<$Res> {
  factory _$$_TrailerCopyWith(
          _$_Trailer value, $Res Function(_$_Trailer) then) =
      __$$_TrailerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? type,
      int? documentaryId,
      String? image,
      String? video,
      String? description,
      String? s3_image_url,
      String? s3_video_url});
}

/// @nodoc
class __$$_TrailerCopyWithImpl<$Res>
    extends _$TrailerCopyWithImpl<$Res, _$_Trailer>
    implements _$$_TrailerCopyWith<$Res> {
  __$$_TrailerCopyWithImpl(_$_Trailer _value, $Res Function(_$_Trailer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? documentaryId = freezed,
    Object? image = freezed,
    Object? video = freezed,
    Object? description = freezed,
    Object? s3_image_url = freezed,
    Object? s3_video_url = freezed,
  }) {
    return _then(_$_Trailer(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      documentaryId: freezed == documentaryId
          ? _value.documentaryId
          : documentaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      video: freezed == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_image_url: freezed == s3_image_url
          ? _value.s3_image_url
          : s3_image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      s3_video_url: freezed == s3_video_url
          ? _value.s3_video_url
          : s3_video_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Trailer implements _Trailer {
  const _$_Trailer(
      {this.id,
      this.type,
      this.documentaryId,
      this.image,
      this.video,
      this.description,
      this.s3_image_url,
      this.s3_video_url});

  factory _$_Trailer.fromJson(Map<String, dynamic> json) =>
      _$$_TrailerFromJson(json);

  @override
  final int? id;
  @override
  final String? type;
  @override
  final int? documentaryId;
  @override
  final String? image;
  @override
  final String? video;
  @override
  final String? description;
  @override
  final String? s3_image_url;
  @override
  final String? s3_video_url;

  @override
  String toString() {
    return 'Trailer(id: $id, type: $type, documentaryId: $documentaryId, image: $image, video: $video, description: $description, s3_image_url: $s3_image_url, s3_video_url: $s3_video_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trailer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.documentaryId, documentaryId) ||
                other.documentaryId == documentaryId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.video, video) || other.video == video) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.s3_image_url, s3_image_url) ||
                other.s3_image_url == s3_image_url) &&
            (identical(other.s3_video_url, s3_video_url) ||
                other.s3_video_url == s3_video_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, documentaryId, image,
      video, description, s3_image_url, s3_video_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrailerCopyWith<_$_Trailer> get copyWith =>
      __$$_TrailerCopyWithImpl<_$_Trailer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrailerToJson(
      this,
    );
  }
}

abstract class _Trailer implements Trailer {
  const factory _Trailer(
      {final int? id,
      final String? type,
      final int? documentaryId,
      final String? image,
      final String? video,
      final String? description,
      final String? s3_image_url,
      final String? s3_video_url}) = _$_Trailer;

  factory _Trailer.fromJson(Map<String, dynamic> json) = _$_Trailer.fromJson;

  @override
  int? get id;
  @override
  String? get type;
  @override
  int? get documentaryId;
  @override
  String? get image;
  @override
  String? get video;
  @override
  String? get description;
  @override
  String? get s3_image_url;
  @override
  String? get s3_video_url;
  @override
  @JsonKey(ignore: true)
  _$$_TrailerCopyWith<_$_Trailer> get copyWith =>
      throw _privateConstructorUsedError;
}
