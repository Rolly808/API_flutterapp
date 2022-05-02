import 'dart:convert';
// ignore: import_of_legacy_library_into_null_safe
import "package:http/http.dart" as http;
import 'package:i_am_rich/HockeyApp/model.dart';
import 'model.dart';



class HockeyApi {
  static Future<List<HockeyMatch>> getMatches() async {
    var uri = Uri.https('api-hockey.p.rapidapi.com', '/games/');

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Host': 'api-hockey.p.rapidapi.com',
      'x-rapidapi-key': '375be014c5mshe2dd5ab0777fd57p155337jsn6eb7e5174ac9',
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['response']) {
      _temp.add(i['content']);
    }
    return HockeyMatch.hockeyFromSnapshot(_temp);
  }
}