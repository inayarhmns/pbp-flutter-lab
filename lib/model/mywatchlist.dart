// To parse this JSON data, do
//
//     final toDo = toDoFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

List<WatchlistItem> toDoFromJson(String str) => List<WatchlistItem>.from(
    json.decode(str).map((x) => WatchlistItem.fromJson(x)));

String toDoToJson(List<WatchlistItem> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class WatchlistItem {
  WatchlistItem({
    required this.pk,
    required this.watched,
    required this.title,
    required this.rating,
    required this.release_date,
    required this.review,
  });

  int pk;
  String watched;
  int rating;
  String release_date;
  String title;
  String review;

  factory WatchlistItem.fromJson(Map<String, dynamic> json) => WatchlistItem(
        pk: json["pk"],
        watched: json['fields']["watched"],
        title: json['fields']["title"],
        rating: json['fields']["rating"],
        release_date: json['fields']["release_date"],
        review: json['fields']["review"],
      );

  Map<String, dynamic> toJson() => {
        "pk": pk,
        "watched": watched,
        "title": title,
        "rating": rating,
        "release_date": release_date,
        "review": review,
      };
}
