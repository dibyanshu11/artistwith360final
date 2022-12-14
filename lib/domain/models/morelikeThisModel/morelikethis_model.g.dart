// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'morelikethis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Morelikethismodel _$$_MorelikethismodelFromJson(Map<String, dynamic> json) =>
    _$_Morelikethismodel(
      returnCode: json['returnCode'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      returnMessage: json['returnMessage'] as String?,
    );

Map<String, dynamic> _$$_MorelikethismodelToJson(
        _$_Morelikethismodel instance) =>
    <String, dynamic>{
      'returnCode': instance.returnCode,
      'data': instance.data,
      'returnMessage': instance.returnMessage,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'data': instance.data,
      'total': instance.total,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['id'] as int?,
      title: json['title'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      logo: json['logo'] as String?,
      releaseDate: json['releaseDate'] == null
          ? null
          : DateTime.parse(json['releaseDate'] as String),
      genre: json['genre'] as String?,
      video: json['video'],
      s3_image_url: json['s3_image_url'] as String?,
      s3_video_url: json['s3_video_url'] as String?,
      s3_logo_url: json['s3_logo_url'] as String?,
      trailer: json['trailer'] == null
          ? null
          : Trailer.fromJson(json['trailer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'city': instance.city,
      'state': instance.state,
      'logo': instance.logo,
      'releaseDate': instance.releaseDate?.toIso8601String(),
      'genre': instance.genre,
      'video': instance.video,
      's3_image_url': instance.s3_image_url,
      's3_video_url': instance.s3_video_url,
      's3_logo_url': instance.s3_logo_url,
      'trailer': instance.trailer,
    };

_$_Trailer _$$_TrailerFromJson(Map<String, dynamic> json) => _$_Trailer(
      id: json['id'] as int?,
      type: json['type'] as String?,
      documentaryId: json['documentaryId'] as int?,
      image: json['image'] as String?,
      video: json['video'] as String?,
      description: json['description'] as String?,
      s3_image_url: json['s3_image_url'] as String?,
      s3_video_url: json['s3_video_url'] as String?,
    );

Map<String, dynamic> _$$_TrailerToJson(_$_Trailer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'documentaryId': instance.documentaryId,
      'image': instance.image,
      'video': instance.video,
      'description': instance.description,
      's3_image_url': instance.s3_image_url,
      's3_video_url': instance.s3_video_url,
    };
