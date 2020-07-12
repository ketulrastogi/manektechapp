import 'package:manektechapp/app/locator.dart';
import 'package:manektechapp/services/restaurant_service.dart';
import 'package:stacked/stacked.dart';

class RestaurantListViewModel extends BaseViewModel {
  final RestaurantService _restaurantService = locator<RestaurantService>();
  int _totalRestaurants = 0;
  List<Map<String, dynamic>> _restaurantList;
  List<Map<String, dynamic>> get restaurantList => _restaurantList;
  int get totalRestaurants => _totalRestaurants;

  getRestaurants() async {
    _restaurantList = await _restaurantService.fetchAllRestaurants();
    _totalRestaurants = _restaurantList.length;
    notifyListeners();
  }
}
