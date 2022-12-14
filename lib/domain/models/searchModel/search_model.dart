// To parse this JSON data, do
//
//     final SearchModel = SearchModelFromJson(jsonString);

import 'dart:convert';

SearchModel SearchModelFromJson(String str) =>
    SearchModel.fromJson(json.decode(str));

String SearchModelToJson(SearchModel data) => json.encode(data.toJson());

class SearchModel {
  SearchModel({
    this.returnCode,
    this.data,
    this.returnMessage,
  });

  int? returnCode;
  Data? data;
  String? returnMessage;

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
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
    this.types,
    this.genre,
  });

  String? types;
  String? genre;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        types: json["types"],
        genre: json["genre"],
      );

  Map<String, dynamic> toJson() => {
        "types": types,
        "genre": genre,
      };
}


