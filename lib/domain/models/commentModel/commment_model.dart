// To parse this JSON data, do
//
//     final commentModel = commentModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'commment_model.freezed.dart';
part 'commment_model.g.dart';

CommentModel commentModelFromJson(String str) => CommentModel.fromJson(json.decode(str));

String commentModelToJson(CommentModel data) => json.encode(data.toJson());

@freezed
abstract class CommentModel with _$CommentModel {
    const factory CommentModel({
        int? returnCode,
        Data? data,
        String? returnMessage,
    }) = _CommentModel;

    factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
    const factory Data({
        int? id,
        String? title,
        String? videoUrl,
        String? image,
        int? views,
        int? likes,
        DateTime? releaseDate,
        DateTime? createdAt,
        String? s3ImageUrl,
        String? s3VideoUrl,
        List<Comment>? comments,
    }) = _Data;

    factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Comment with _$Comment {
    const factory Comment({
        int? id,
        int? clipId,
        int? userId,
        String? comment,
        DateTime? createdAt,
    }) = _Comment;

    factory Comment.fromJson(Map<String, dynamic> json) => _$CommentFromJson(json);
}
