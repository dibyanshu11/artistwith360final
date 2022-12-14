// To parse this JSON data, do
//
//     final arpViewModel = arpViewModelFromJson(jsonString);

import 'dart:convert';

ArpViewModel arpViewModelFromJson(String str) =>
    ArpViewModel.fromJson(json.decode(str));

String arpViewModelToJson(ArpViewModel data) => json.encode(data.toJson());

class ArpViewModel {
  ArpViewModel({
    this.returnCode,
    this.data,
    this.returnMessage,
  });

  int? returnCode;
  Data? data;
  String? returnMessage;

  factory ArpViewModel.fromJson(Map<String, dynamic> json) => ArpViewModel(
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
    this.id,
    this.title,
    this.slug,
    this.image,
    this.logo,
    this.city,
    this.state,
    this.genre,
    this.releaseDate,
    this.musicUrl,
    this.releaseTime,
    this.jules,
    this.video,
    this.hoursMinutes,
    this.description,
    this.views,
    this.likes,
    this.dislikes,
    this.deleted,
    this.createdAt,
    this.updatedAt,
    this.s3ImageUrl,
    this.s3VideoUrl,
    this.s3LogoUrl,
    this.types,
  });

  int? id;
  String? title;
  String? slug;
  dynamic image;
  String? logo;
  String? city;
  String? state;
  String? genre;
  DateTime? releaseDate;
  String? musicUrl;
  String? releaseTime;
  dynamic jules;
  dynamic video;
  dynamic hoursMinutes;
  dynamic description;
  int? views;
  int? likes;
  int? dislikes;
  int? deleted;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? s3ImageUrl;
  String? s3VideoUrl;
  String? s3LogoUrl;
  List<Type>? types;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: json["title"],
        slug: json["slug"],
        image: json["image"],
        logo: json["logo"],
        city: json["city"],
        state: json["state"],
        genre: json["genre"],
        releaseDate: DateTime.parse(json["release_date"]),
        musicUrl: json["music_url"],
        releaseTime: json["release_time"],
        jules: json["jules"],
        video: json["video"],
        hoursMinutes: json["hours_minutes"],
        description: json["description"],
        views: json["views"],
        likes: json["likes"],
        dislikes: json["dislikes"],
        deleted: json["deleted"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        s3ImageUrl: json["s3_image_url"],
        s3VideoUrl: json["s3_video_url"],
        s3LogoUrl: json["s3_logo_url"],
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "slug": slug,
        "image": image,
        "logo": logo,
        "city": city,
        "state": state,
        "genre": genre,
        "release_date": releaseDate!.toIso8601String(),
        "music_url": musicUrl,
        "release_time": releaseTime,
        "jules": jules,
        "video": video,
        "hours_minutes": hoursMinutes,
        "description": description,
        "views": views,
        "likes": likes,
        "dislikes": dislikes,
        "deleted": deleted,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
        "s3_logo_url": s3LogoUrl,
        "types": List<dynamic>.from(types!.map((x) => x.toJson())),
      };
}

class Type {
  Type({
    this.id,
    this.documentaryId,
    this.type,
    this.image,
    this.video,
    this.videoLength,
    this.description,
    this.views,
    this.s3ImageUrl,
    this.s3VideoUrl,
  });

  int? id;
  int? documentaryId;
  String? type;
  String? image;
  String? video;
  String? videoLength;
  String? description;
  int? views;
  String? s3ImageUrl;
  String? s3VideoUrl;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        id: json["id"],
        documentaryId: json["documentary_id"],
        type: json["type"],
        image: json["image"],
        video: json["video"],
        videoLength: json["video_length"],
        description: json["description"],
        views: json["views"],
        s3ImageUrl: json["s3_image_url"],
        s3VideoUrl: json["s3_video_url"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "documentary_id": documentaryId,
        "type": type,
        "image": image,
        "video": video,
        "video_length": videoLength,
        "description": description,
        "views": views,
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
      };
}
