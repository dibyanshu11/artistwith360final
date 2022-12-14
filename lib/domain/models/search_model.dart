// To parse this JSON data, do
//
//     final arpSearchModel = arpSearchModelFromJson(jsonString);

import 'dart:convert';

ArpSearchModel arpSearchModelFromJson(String str) =>
    ArpSearchModel.fromJson(json.decode(str));

String arpSearchModelToJson(ArpSearchModel data) => json.encode(data.toJson());

class ArpSearchModel {
  ArpSearchModel({
    this.returnCode,
    this.data,
    this.returnMessage,
  });

  int? returnCode;
  List<Datum>? data;
  String? returnMessage;

  factory ArpSearchModel.fromJson(Map<String, dynamic> json) => ArpSearchModel(
        returnCode: json["returnCode"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        returnMessage: json["returnMessage"],
      );

  Map<String, dynamic> toJson() => {
        "returnCode": returnCode,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
        "returnMessage": returnMessage,
      };
}

class Datum {
  Datum({
    this.id,
    this.title,
    this.city,
    this.state,
    this.logo,
    this.releaseDate,
    this.genre,
    this.video,
    this.s3ImageUrl,
    this.s3VideoUrl,
    this.s3LogoUrl,
    this.trailer,
  });

  int? id;
  String? title;
  String? city;
  String? state;
  String? logo;
  DateTime? releaseDate;
  String? genre;
  dynamic video;
  String? s3ImageUrl;
  String? s3VideoUrl;
  String? s3LogoUrl;
  Trailer? trailer;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        city: json["city"],
        state: json["state"],
        logo: json["logo"],
        releaseDate: DateTime.parse(json["release_date"]),
        genre: json["genre"],
        video: json["video"],
        s3ImageUrl: json["s3_image_url"],
        s3VideoUrl: json["s3_video_url"],
        s3LogoUrl: json["s3_logo_url"],
        trailer: Trailer.fromJson(json["trailer"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "city": city,
        "state": state,
        "logo": logo,
        "release_date": releaseDate!.toIso8601String(),
        "genre": genre,
        "video": video,
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
        "s3_logo_url": s3LogoUrl,
        "trailer": trailer!.toJson(),
      };
}

class Trailer {
  Trailer({
    this.id,
    this.type,
    this.documentaryId,
    this.image,
    this.video,
    this.description,
    this.s3ImageUrl,
    this.s3VideoUrl,
  });

  int? id;
  String? type;
  int? documentaryId;
  String? image;
  String? video;
  String? description;
  String? s3ImageUrl;
  String? s3VideoUrl;

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        id: json["id"],
        type: json["type"],
        documentaryId: json["documentary_id"],
        image: json["image"],
        video: json["video"],
        description: json["description"],
        s3ImageUrl: json["s3_image_url"],
        s3VideoUrl: json["s3_video_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "documentary_id": documentaryId,
        "image": image,
        "video": video,
        "description": description,
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
      };
}
