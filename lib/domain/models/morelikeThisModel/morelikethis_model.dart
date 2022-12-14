// To parse this JSON data, do
//
//     final morelikethismodel = morelikethismodelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'morelikethis_model.freezed.dart';
part 'morelikethis_model.g.dart';

Morelikethismodel morelikethismodelFromJson(String str) => Morelikethismodel.fromJson(json.decode(str));

String morelikethismodelToJson(Morelikethismodel data) => json.encode(data.toJson());

@freezed
abstract class Morelikethismodel with _$Morelikethismodel {
    const factory Morelikethismodel({
        int? returnCode,
        Data? data,
        String? returnMessage,
    }) = _Morelikethismodel;

    factory Morelikethismodel.fromJson(Map<String, dynamic> json) => _$MorelikethismodelFromJson(json);
}

@freezed
abstract class Data with _$Data {
    const factory Data({
        List<Datum>? data,
        int? total,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Datum with _$Datum {
    const factory Datum({
        int? id,
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
        Trailer? trailer,
    }) = _Datum;

    factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
abstract class Trailer with _$Trailer {
    const factory Trailer({
        int? id,
        String? type,
        int? documentaryId,
        String? image,
        String? video,
        String? description,
        String? s3_image_url,
        String? s3_video_url,
    }) = _Trailer;

    factory Trailer.fromJson(Map<String, dynamic> json) => _$TrailerFromJson(json);
}
