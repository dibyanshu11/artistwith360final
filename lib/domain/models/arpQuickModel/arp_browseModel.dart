// To parse this JSON data, do
//
//     final ArpBrowserModel = ArpBrowserModelFromJson(jsonString);

import 'dart:convert';

ArpBrowserModel ArpBrowserModelFromJson(String str) =>
    ArpBrowserModel.fromJson(json.decode(str));

String ArpBrowserModelToJson(ArpBrowserModel data) =>
    json.encode(data.toJson());

class ArpBrowserModel {
  ArpBrowserModel({
    this.returnCode,
    this.data,
    this.returnMessage,
  });

  int? returnCode;
  Data? data;
  String? returnMessage;

  factory ArpBrowserModel.fromJson(Map<String, dynamic> json) =>
      ArpBrowserModel(
        returnCode: json["returnCode"],
        data: Data.fromJson(json["data"]),
        returnMessage: json["returnMessage"],
      );

  Map<String, dynamic> toJson() => {
        "returnCode": returnCode,
        "data": data!.toJson(),
        "returnMessage": returnMessage,
      };
}

class Data {
  Data({
    this.trendingList,
    this.total,
    this.top,
  });

  List<TrendingList>? trendingList;
  int? total;
  List<Top>? top;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        trendingList: List<TrendingList>.from(
            json["trending_list"].map((x) => TrendingList.fromJson(x))),
        total: json["total"],
        top: List<Top>.from(json["top"].map((x) => Top.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "trending_list":
            List<dynamic>.from(trendingList!.map((x) => x.toJson())),
        "total": total,
        "top": List<dynamic>.from(top!.map((x) => x.toJson())),
      };
}

class Top {
  Top({
    this.id,
    this.title,
    this.logo,
    this.s3_image_url,
    this.s3_video_url,
    this.s3_logo_url,
    this.types,
  });

  int? id;
  String? title;
  String? logo;
  String? s3_image_url;
  String? s3_video_url;
  String? s3_logo_url;
  List<Type>? types;

  factory Top.fromJson(Map<String, dynamic> json) => Top(
        id: json["id"],
        title: json["title"],
        logo: json["logo"],
        s3_image_url: json["s3_image_url"],
        s3_video_url: json["s3_video_url"],
        s3_logo_url: json["s3_logo_url"],
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "logo": logo,
        "s3_image_url": s3_image_url,
        "s3_video_url": s3_video_url,
        "s3_logo_url": s3_logo_url,
        "types": List<dynamic>.from(types!.map((x) => x.toJson())),
      };
}

class Type {
  Type({
    this.id,
    this.type,
    this.documentaryId,
    this.image,
    this.video,
    this.s3_image_url,
    this.s3_video_url,
    this.video_length,
    this.description,
  });

  int? id;
  String? type;
  String? video_length;
  int? documentaryId;
  String? image;
  String? video;
  String? s3_image_url;
  String? s3_video_url;
  String? description;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"],
        type: json["type"],
        documentaryId: json["documentary_id"],
        video_length: json["video_length"],
        image: json["image"],
        video: json["video"],
        s3_image_url: json["s3_image_url"],
        s3_video_url: json["s3_video_url"],
        description: json["description"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": type,
        "documentary_id": documentaryId,
        "image": image,
        "video": video,
        "video_length": video_length,
        "s3_image_url": s3_image_url,
        "s3_video_url": s3_video_url,
        "description": description ?? null,
      };
}

class TrendingList {
  TrendingList(
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
      this.trailer,
      this.listed,
      this.views,
      this.liked});

  int? id;
  String? title;
  String? city;
  String? state;
  String? logo;
  DateTime? releaseDate;
  String? genre;
  dynamic video;
  String? s3_image_url;
  String? s3_video_url;
  String? s3_logo_url;
  Type? trailer;
  int? listed;
  int? views;
  int? liked;

  factory TrendingList.fromJson(Map<String, dynamic> json) => TrendingList(
      id: json["id"],
      title: json["title"],
      city: json["city"],
      views: json["views"],
      state: json["state"],
      logo: json["logo"],
      releaseDate: DateTime.parse(json["release_date"]),
      genre: json["genre"],
      video: json["video"],
      s3_image_url: json["s3_image_url"],
      s3_video_url: json["s3_video_url"],
      s3_logo_url: json["s3_logo_url"],
      trailer: json["trailer"] == null ? null : Type.fromJson(json["trailer"]),
      listed: json["listed"],
      liked: json["liked"]);

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "liked": liked,
        "city": city,
        "views": views,
        "state": state,
        "logo": logo,
        "release_date":
            "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "genre": genre,
        "video": video,
        "s3_image_url": s3_image_url,
        "s3_video_url": s3_video_url,
        "s3_logo_url": s3_logo_url,
        "trailer": trailer == null ? null : trailer!.toJson(),
        "listed": listed,
      };
}
