import 'package:manektechapp/app/locator.dart';
import 'package:manektechapp/services/restaurant_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  final RestaurantService _restaurantService = locator<RestaurantService>();

  fetchAndSaveRestaurants() async {
    _restaurantService.fetchAndSaveRestaurantsLocally();
  }

  deleteAndRefetchData() async {
    _restaurantService.deleteAndRefetchData();
  }
}
