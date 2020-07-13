import 'package:manektechapp/models/restaurant_db.dart';

class RestaurantDBService {
  final AppDatabase database = AppDatabase();

  // All tables have getters in the generated class - we can select the tasks table
  Future<List<Restaurant>> getAllRestaurants() => database.getAllRestaurants();

  Future insertRestaurant(Restaurant restaurant) =>
      database.insertRestaurant(restaurant);

  Future deleteAllRestaurants() => database.deleteAllRestaurants();
}
