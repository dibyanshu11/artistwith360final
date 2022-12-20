// To parse this JSON data, do
//
//     final arpBrowserModel = arpBrowserModelFromJson(jsonString);

import 'dart:convert';

ArpBrowserModel arpBrowserModelFromJson(String str) =>
    ArpBrowserModel.fromJson(json.decode(str));

String arpBrowserModelToJson(ArpBrowserModel data) =>
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
    this.listing,
    this.total,
    this.lastPage,
    this.currentPage,
    this.top,
  });

  List<Listing>? listing;
  int? total;
  int? lastPage;
  int? currentPage;
  List<Top>? top;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        listing:
            List<Listing>.from(json["listing"].map((x) => Listing.fromJson(x))),
        total: json["total"],
        lastPage: json["last_page"],
        currentPage: json["current_page"],
        top: List<Top>.from(json["top"].map((x) => Top.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "listing": List<dynamic>.from(listing!.map((x) => x.toJson())),
        "total": total,
        "last_page": lastPage,
        "current_page": currentPage,
        "top": List<dynamic>.from(top!.map((x) => x.toJson())),
      };
}

class Listing {
  Listing({
    this.id,
    this.title,
    this.city,
    this.state,
    this.logo,
    this.releaseDate,
    this.genre,
    this.musicUrl,
    this.views,
    this.s3ImageUrl,
    this.s3VideoUrl,
    this.s3LogoUrl,
    this.trailer,
    this.listed,
    this.liked,
  });

  int? id;
  String? title;
  String? city;
  String? state;
  String? logo;
  DateTime? releaseDate;
  String? genre;
  String? musicUrl;
  int? views;
  String? s3ImageUrl;
  String? s3VideoUrl;
  String? s3LogoUrl;
  Trailer? trailer;
  int? listed;
  int? liked;

  factory Listing.fromJson(Map<String, dynamic> json) => Listing(
        id: json["id"],
        title: json["title"],
        city: json["city"],
        state: json["state"],
        logo: json["logo"],
        releaseDate: DateTime.parse(json["release_date"]),
        genre: json["genre"],
        musicUrl: json["music_url"],
        views: json["views"],
        s3ImageUrl: json["s3_image_url"],
        s3VideoUrl: json["s3_video_url"],
        s3LogoUrl: json["s3_logo_url"],
        trailer: Trailer.fromJson(json["trailer"]),
        listed: json["listed"],
        liked: json["liked"],
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
        "views": views,
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
        "s3_logo_url": s3LogoUrl,
        "trailer": trailer!.toJson(),
        "listed": listed,
        "liked": liked,
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
        description: json["description"] == null ? null : json["description"],
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
        "description": description == null ? null : description,
        "video_length": videoLength,
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
      };
}

class Top {
  Top({
    this.id,
    this.title,
    this.logo,
    this.s3ImageUrl,
    this.s3VideoUrl,
    this.s3LogoUrl,
    this.types,
  });

  int? id;
  String? title;
  String? logo;
  String? s3ImageUrl;
  String? s3VideoUrl;
  String? s3LogoUrl;
  List<Trailer>? types;

  factory Top.fromJson(Map<String, dynamic> json) => Top(
        id: json["id"],
        title: json["title"],
        logo: json["logo"],
        s3ImageUrl: json["s3_image_url"],
        s3VideoUrl: json["s3_video_url"],
        s3LogoUrl: json["s3_logo_url"],
        types:
            List<Trailer>.from(json["types"].map((x) => Trailer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "logo": logo,
        "s3_image_url": s3ImageUrl,
        "s3_video_url": s3VideoUrl,
        "s3_logo_url": s3LogoUrl,
        "types": List<dynamic>.from(types!.map((x) => x.toJson())),
      };
}

List<Listing>? names = [];
