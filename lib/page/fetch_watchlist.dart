import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/details_watchlist.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<List<WatchlistItem>> fetchWatchlist() async {
    var url =
        Uri.parse('https://django-app-inaya.herokuapp.com/mywatchlist/json/');
    var response = await http.get(
      url,
      headers: {
        "Access-Control-Allow-Origin": "*",
        "Content-Type": "application/json",
      },
    );
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    List<WatchlistItem> watchList = [];
    for (var d in data) {
      if (d != null) {
        watchList.add(WatchlistItem.fromJson(d));
      }
    }
    return watchList;
  }
