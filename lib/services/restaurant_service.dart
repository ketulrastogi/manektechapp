import 'dart:convert';
import 'package:manektechapp/app/locator.dart';
import 'package:manektechapp/models/restaurant_db.dart';
import 'package:manektechapp/models/restaurant_model.dart';
import 'package:manektechapp/services/restaurant_db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:http/http.dart' as http;

class RestaurantService with ReactiveServiceMixin {
  final RestaurantDBService _restaurantDBService =
      locator<RestaurantDBService>();
  List<Map<String, dynamic>> _restaurantList;

  List<Map<String, dynamic>> get restaurantList => _restaurantList;

  Future<void> fetchAndSaveRestaurantsLocally() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    if (sharedPreferences.getBool('savedLocally') != null &&
        !sharedPreferences.getBool('savedLocally')) {
      // await deleteRestaurantDB();
      List<RestaurantModel> _restaurantList = await fetchAllRestaurants();
      saveAllRestaurantsLocally(_restaurantList);
      sharedPreferences.setBool('savedLocally', true);
    }
  }

  Future<List<RestaurantModel>> fetchAllRestaurants() async {
    http.Response response = await http.get(
        'https://developers.zomato.com/api/v2.1/search?entity_id=280&entity_type=city&start=0&count=10&collection_id=1',
        headers: {
          'user-key': 'e28a8297677194d81d39a8f271940705',
        });
    Map<String, dynamic> data = json.decode(response.body);
    List<RestaurantModel> restaurantList = [...data['restaurants']]
        .map((item) => RestaurantModel.fromMap(item['restaurant']))
        .toList();
    print(restaurantList[0].phoneNumbers);
    return [...restaurantList];
  }

  void saveAllRestaurantsLocally(List<RestaurantModel> restaurantList) async {
    restaurantList.forEach((element) async {
      Restaurant _restaurant = Restaurant(
        id: element.id,
        name: element.name,
        thumb: element.thumb,
        address: element.address,
        locality: element.locality,
        city: element.city,
        zipcode: element.zipcode,
        latitude: element.latitude,
        longitude: element.longitude,
        aggregateRating: element.aggregateRating,
        totalVotes: element.totalVotes,
        featuredImage: element.featuredImage,
        photosUrl: element.photosUrl,
        phoneNumbers: element.phoneNumbers,
      );
      await _restaurantDBService.insertRestaurant(_restaurant);
    });
  }

  Future<List<RestaurantModel>> getRestaurants() async {
    List<Restaurant> _restaurants =
        await _restaurantDBService.getAllRestaurants();
    List<RestaurantModel> restaurantList = _restaurants
        .map((element) => RestaurantModel(
              id: element.id,
              name: element.name,
              thumb: element.thumb,
              address: element.address,
              locality: element.locality,
              city: element.city,
              zipcode: element.zipcode,
              latitude: element.latitude.toString(),
              longitude: element.longitude.toString(),
              aggregateRating: element.aggregateRating.toString(),
              totalVotes: element.totalVotes,
              featuredImage: element.featuredImage,
              photosUrl: element.photosUrl,
              phoneNumbers: element.phoneNumbers,
            ))
        .toList();
    return restaurantList;
  }

  Future<void> deleteAndRefetchData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('savedLocally', false);
    await _restaurantDBService.deleteAllRestaurants();
    await fetchAndSaveRestaurantsLocally();
  }
}
