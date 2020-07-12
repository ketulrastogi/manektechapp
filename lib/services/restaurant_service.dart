import 'dart:convert';

import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class RestaurantService with ReactiveServiceMixin {
  List<Map<String, dynamic>> _restaurantList;

  List<Map<String, dynamic>> get restaurantList => _restaurantList;

  void fetchAndSaveRestaurantsLocally() async {}

  Future<List<Map<String, dynamic>>> fetchAllRestaurants() async {
    http.Response response = await http.get(
        'https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=0&count=10&collection_id=1',
        headers: {
          'user-key': 'e28a8297677194d81d39a8f271940705',
        });
    Map<String, dynamic> data = json.decode(response.body);
    print(data);
    return [...data['restaurants']];
  }

  void saveAllRestaurantsLocally() async {}
}
