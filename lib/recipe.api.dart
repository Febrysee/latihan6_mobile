import 'dart:convert';
import 'package:newapp/recipe.dart';

import 'package:http/http.dart' as http;

class RecipeApi {
  static http.Client _httpClient = http.Client();

  static set httpClient(http.Client client) {
    _httpClient = client;
  }

  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await _httpClient.get(uri, headers: {
      "x-rapidapi-key": "1b2c0974c8mshd32daa142f27d9ap1587a1jsn0fe6f5111941",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      if (data.containsKey('feed') && data['feed'] != null) {
        List _temp = [];

        for (var i in data['feed']) {
          _temp.add(i['content']['details']);
        }

        return Recipe.recipesFromSnapshot(_temp);
      } else {
        // Handle the case where 'feed' is null or not present in the response.
        return [];
      }
    } else {
      // Handle the case where the HTTP request fails.
      throw Exception('Failed to load recipes');
    }
  }
}
