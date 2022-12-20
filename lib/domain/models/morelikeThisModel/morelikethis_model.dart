// To parse this JSON data, do
//
//     final morelikethismodel = morelikethismodelFromJson(jsonString);

import 'dart:convert';

Morelikethismodel morelikethismodelFromJson(String str) =>
    Morelikethismodel.fromJson(json.decode(str));

String morelikethismodelToJson(Morelikethismodel data) =>
    json.encode(data.toJson());

class Morelikethismodel {
  Morelikethismodel({
    this.returnCode,
    this.data,
    this.returnMessage,
  });

  int? returnCode;
  List<Datum>? data;
  String? returnMessage;

  factory Morelikethismodel.fromJson(Map<String, dynamic> json) =>
      Morelikethismodel(
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
    this.musicUrl,
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
  String? musicUrl;
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
        musicUrl: json["music_url"],
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
        "music_url": musicUrl,
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
    this.videoLength,
    this.s3ImageUrl,
    this.s3VideoUrl,
  });

  int? id;
  String? type;
  int? documentaryId;
  String? image;
  String? video;
  String? description;
  String? videoLength;
  String? s3ImageUrl;
  String? s3VideoUrl;

  factory Trailer.fromJson(Map<String, dynamic> json) => Trailer(
        id: json["id"],
        type: json["type"],
        documentaryId: json["documentary_id"],
        image: json["image"],
        video: json["video"],
        description: json["description"],
        videoLength: json["video_length"],
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
        "video_length": videoLength,
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
      };
}
