// To parse this JSON data, do
//
//     final quickClipsModel = quickClipsModelFromJson(jsonString);

import 'dart:convert';

QuickClipsModel quickClipsModelFromJson(String str) =>
    QuickClipsModel.fromJson(json.decode(str));

String quickClipsModelToJson(QuickClipsModel data) =>
    json.encode(data.toJson());

class QuickClipsModel {
  QuickClipsModel({
    this.returnCode,
    this.data,
    this.returnMessage,
  });

  int? returnCode;
  Data? data;
  String? returnMessage;

  factory QuickClipsModel.fromJson(Map<String, dynamic> json) =>
      QuickClipsModel(
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
    this.listing,
    this.total,
    this.lastPage,
    this.currentPage,
  });

  List<quickListing>? listing;
  int? total;
  int? lastPage;
  int? currentPage;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        listing: List<quickListing>.from(
            json["listing"].map((x) => quickListing.fromJson(x))),
        total: json["total"],
        lastPage: json["last_page"],
        currentPage: json["current_page"],
      );

  Map<String, dynamic> toJson() => {
        "listing": List<dynamic>.from(listing!.map((x) => x.toJson())),
        "total": total,
        "last_page": lastPage,
        "current_page": currentPage,
      };
}

List<quickListing> storeQuickClipData = [];

class quickListing {
  quickListing({
    this.id,
    this.title,
    this.videoUrl,
    this.image,
    this.views,
    this.likes,
    this.releaseDate,
    this.releaseTime,
    this.deleted,
    this.createdAt,
    this.s3ImageUrl,
    this.s3VideoUrl,
    this.count,
    this.liked,
  });

  int? id;
  String? title;
  String? videoUrl;
  String? image;
  int? views;
  int? likes;
  DateTime? releaseDate;
  dynamic releaseTime;
  int? deleted;
  DateTime? createdAt;
  String? s3ImageUrl;
  String? s3VideoUrl;
  int? count;
  int? liked;

  factory quickListing.fromJson(Map<String, dynamic> json) => quickListing(
        id: json["id"],
        title: json["title"],
        videoUrl: json["video_url"],
        image: json["image"],
        views: json["views"],
        likes: json["likes"],
        releaseDate: DateTime.parse(json["release_date"]),
        releaseTime: json["release_time"],
        deleted: json["deleted"],
        createdAt: DateTime.parse(json["created_at"]),
        s3ImageUrl: json["s3_image_url"],
        s3VideoUrl: json["s3_video_url"],
        count: json["count"],
        liked: json["liked"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "video_url": videoUrl,
        "image": image,
        "views": views,
        "likes": likes,
        "release_date": releaseDate!.toIso8601String(),
        "release_time": releaseTime,
        "deleted": deleted,
        "created_at": createdAt!.toIso8601String(),
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
        "count": count,
        "liked": liked,
      };
}
