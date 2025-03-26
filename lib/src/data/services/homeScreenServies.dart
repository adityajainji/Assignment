import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../../data/api/apiroutes.dart';
import '../models/listOfVideosModel.dart';

class HomeScreenServices {
  HomeScreenServices._();

  static final HomeScreenServices _instance = HomeScreenServices._();

  static HomeScreenServices get instance => _instance;

  Future<Map<String, dynamic>> getDataForHomeScreenServices() async {
    try {
      var url =
          APIConstants.baseUrl + APIConstants.videos + "search?query=home";
      const String apiKey =
          "ljGWDuUqYpKQGjUeLjSAglf5nQTEdBN9mjPw4JKO6QqopQQfhFFLNmnF";
      print(url);
      final response = await http.get(
        Uri.parse(url),
        headers: {
          "Authorization": apiKey,
        },
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        var dataModel = data['videos']
            .map<VideosListClass>((json) => VideosListClass.fromJson(json))
            .toList();
        print(data);
        final map = {
          'code': response.statusCode,
          'data': dataModel,
        };
        return map;
      } else {
        print("Failed to load videos: ${response.statusCode}");
        final map = {
          'code': response.statusCode,
          'data': response.body,
        };
        return map;
      }
    } on Exception catch (e) {
      debugPrint("hello1" + e.toString());
      rethrow;
    } catch (e) {
      rethrow;
    }
  }
}
